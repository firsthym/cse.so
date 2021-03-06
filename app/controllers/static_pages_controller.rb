
class StaticPagesController < ApplicationController

	def about
	end

	def help
      @hash_tag = Hash.new
      @hash_node = Hash.new
      Tag.all.group_by { |t| t.name }.collect { |k,v| @hash_tag[k]= v[0]}
      Node.all.group_by { |n| n.title }.collect { |k,v| @hash_node[k]= v[0]}
	end

	def agreement
	end
end

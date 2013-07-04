Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22a.google.com ([2a00:1450:4013:c01::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uudk0-0000BX-Ig
 for barebox@lists.infradead.org; Thu, 04 Jul 2013 07:14:09 +0000
Received: by mail-ea0-f170.google.com with SMTP id h10so561566eaj.29
 for <barebox@lists.infradead.org>; Thu, 04 Jul 2013 00:13:46 -0700 (PDT)
Message-ID: <51D520A2.70101@gmail.com>
Date: Thu, 04 Jul 2013 09:13:38 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1372891578-1871-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372891578-1871-2-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130704065853.GS516@pengutronix.de>
In-Reply-To: <20130704065853.GS516@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] OF: base: fix infinite loop in of_find_node_by_name
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 07/04/13 08:58, Sascha Hauer wrote:
> On Thu, Jul 04, 2013 at 12:46:16AM +0200, Sebastian Hesselbarth wrote:
>> of_find_node_by_name suffers from infinite looping, because it
>> does not check for root node of the tree iterated over. This adds a
>> check for parent pointer of last tested iterator entry, which is
>> NULL for the root node.
>>
>
> How about the following which adds the check to the iterator instead of
> repeating it in the users.
>
> Sascha
>
> 8<---------------------------------------------------------------
>
>  From 3f361661e5446b0592f137a50efc4b275f426b41 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Thu, 4 Jul 2013 08:52:10 +0200
> Subject: [PATCH] OF: base: fix inifinite looping in node iterators
>
> of_find_node_by_name suffers from infinite looping, because it
> does not check for root node of the tree iterated over. This
> fixes this by checking for node->parent to determine whether
> the last node has been reached.
> Since of_tree_for_each_node does not iterate over the whole tree,
> but only over the remaining nodes, rename it to
> of_tree_for_each_node_from.
>
> Reported-by: NISHIMOTO Hiroki <hiroki.nishimoto.if@gmail.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---

Sascha,

I thought about that also. I like the approach better than fixing
every user of the iterator and will re-test them all.

Thanks for the patch.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

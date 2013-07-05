Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuzrH-0000K5-Pc
 for barebox@lists.infradead.org; Fri, 05 Jul 2013 06:51:08 +0000
Date: Fri, 5 Jul 2013 08:50:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130705065043.GG516@pengutronix.de>
References: <1372891578-1871-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372891578-1871-2-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130704065853.GS516@pengutronix.de> <51D5ACEA.4070809@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51D5ACEA.4070809@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] OF: base: fix infinite loop in of_find_node_by_name
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Hi Sebastian,

On Thu, Jul 04, 2013 at 07:12:10PM +0200, Sebastian Hesselbarth wrote:
> On 07/04/13 08:58, Sascha Hauer wrote:
> >On Thu, Jul 04, 2013 at 12:46:16AM +0200, Sebastian Hesselbarth wrote:
> >>of_find_node_by_name suffers from infinite looping, because it
> >>does not check for root node of the tree iterated over. This adds a
> >>check for parent pointer of last tested iterator entry, which is
> >>NULL for the root node.
> >>
> >
> >How about the following which adds the check to the iterator instead of
> >repeating it in the users.
> 
> Sascha,
> 
> I have taken your patch and successfully tested it for all node
> iterators.

I applied this one.

> of_for_each_node_with_property requires an additional patch
> to initialize an empty from node with root_node.
> 
> Also, there was a similar issue for the child iterator where I sent a
> patch ("OF: base: fix iterator in of_get_next_available_child") tonight.

I applied this one aswell.

What's missing now is the mentioned fix for
of_for_each_node_with_property, then we should be fine.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

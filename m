Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOG0q-0005ca-7o
 for barebox@lists.infradead.org; Tue, 14 Apr 2020 07:29:41 +0000
References: <20200413075204.17544-1-a.fatoum@pengutronix.de>
 <20200413075204.17544-8-a.fatoum@pengutronix.de>
 <20200414064609.GV27288@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <6f20f4e0-24bd-b6f5-43a5-6ba62334c6ce@pengutronix.de>
Date: Tue, 14 Apr 2020 09:29:36 +0200
MIME-Version: 1.0
In-Reply-To: <20200414064609.GV27288@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 07/21] of: port Linux of_get_compatible_child helper
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Michael Tretter <m.tretter@pengutronix.de>

Hello Sascha,

On 4/14/20 8:46 AM, Sascha Hauer wrote:
> for_each_child_of_node() goes down to list_for_each_entry(). On an empty
> list child will point to the list head after leaving the loop. Return
> child explicitly when it's compatible and NULL when leaving the loop
> which is better readable as well.

argh, it looked fishy to me as well, but I didn't think about comparing
Linux and barebox implementation. I just reviewed the 70 instances
of for_each_child_of_node we have and it seems only one other instance
in the overlay code has made the same assumption as I did:
 - drivers/of/resolver.c: of_resolve_phandles (grep for /if (!overlay_child)/)

I can send a fixup to make it more readable but I'd want to change
for_each_child_of_node to align it with Linux behavior as well.

Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

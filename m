Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d7jk7-0004I9-MG
 for barebox@lists.infradead.org; Mon, 08 May 2017 14:34:33 +0000
Date: Mon, 8 May 2017 16:34:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170508143410.xdeqghqeehd6mdt5@pengutronix.de>
References: <91e8e828-d3c3-5c56-0a92-a52c493b8354@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <91e8e828-d3c3-5c56-0a92-a52c493b8354@mev.co.uk>
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
Subject: Re: Setting MAC address from nv variable broken in barebox 2017.05.0?
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

Hi Ian,

On Mon, May 08, 2017 at 02:39:19PM +0100, Ian Abbott wrote:
> Hi,
> 
> I'm not sure if this is a bug or whether I'm doing something wrong.  In
> barebox 2017.04.0 and earlier, I stored the Ethernet MAC address in a
> non-volatile ('nv') variable dev.eth0.macaddr=xx:xx:xx:xx:xx:xx and that got
> propagated to 'global' and the eth0 device on boot:

Yes this is broken. Sorry for breaking it and thank you for reporting it
;)
I just sent out a fix, you're on Cc. Please let me know if this works.

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

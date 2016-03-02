Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abCst-0001nW-II
 for barebox@lists.infradead.org; Wed, 02 Mar 2016 19:56:36 +0000
Date: Wed, 2 Mar 2016 20:56:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160302195613.GU9224@pengutronix.de>
References: <3665455.GH0lG2JcVq@ws-stein>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3665455.GH0lG2JcVq@ws-stein>
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
Subject: Re: UBIFS recovery fails in barebox while Linux suceeds
To: Alexander Stein <alexander.stein@systec-electronic.com>
Cc: barebox@lists.infradead.org, Daniel =?iso-8859-15?Q?Kr=FCger?= <daniel.krueger@systec-electronic.com>

On Wed, Mar 02, 2016 at 05:19:08PM +0100, Alexander Stein wrote:
> Hi,
> 
> in case a UBIFS needs recovery (unclean write or whatever on NOR
> flash) it is possible that barebox fails to do so while Linux suceeds.
> The main cause, IMHO, is that Linux takes max_write_size into account
> (starting with commit 2765df7da540687c4d57ca840182122f074c5b9c "UBIFS:
> use max_write_size during recovery") while barebox doesn't. Apparently
> is_last_write (fs/ubifs/recovery.c) results differently due to that
> fact which explains why recovery progress differently. I don't know
> which linux version the ubifs code in barebox is taken from but I
> guess this needs to be updated. Are there any plans?

The barebox UBIFS code is taken from U-Boot 2013.07 which is taken from
Linux-2.6.29-rc6, so indeed the code is quite old. U-Boot has updated
UBIFS support to Linux-4.2. The question is if we update UBIFS from
U-Boot or directly from the Kernel, I have no idea which way is easier.
Currently there are no plans to update UBIFS, but of course you are
invited to create them ;)

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

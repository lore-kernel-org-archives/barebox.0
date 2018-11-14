Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gMv9s-0000wp-OB
 for barebox@lists.infradead.org; Wed, 14 Nov 2018 13:24:42 +0000
Date: Wed, 14 Nov 2018 14:24:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181114132427.zdswmk6gt6qym2gn@pengutronix.de>
References: <CAEp+FuCwQYNjA1cachB09Lsa9ALfruvKQv-MWQjZdz5wexbEUg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEp+FuCwQYNjA1cachB09Lsa9ALfruvKQv-MWQjZdz5wexbEUg@mail.gmail.com>
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
Subject: Re: Cannot update barebox 2018.04.0 anymore
To: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Cc: barebox@lists.infradead.org

Hi Mihaita,

On Wed, Nov 14, 2018 at 11:38:49AM +0100, Mihaita Ivascu wrote:
> Hello,
> 
>     I have updated my barebox image on a imx6ul board and since then I
> cannot update it again.
> I think I might have left something out in the barebox config last
> time but I do not know what.
>     I try to do the following:
> 
> barebox_update -y -t /mnt/disk0.0/barebox.bin
> ocotp0.permanent_write_enable=1
> mw -l -d /dev/imx-ocotp 0x14 x00000093
> mw -l -d /dev/imx-ocotp 0x18 0x00000010
> mw -l 0x20D8004 0x00000093
> mw -l -d /dev/imx-ocotp 0x14 0x00000093
> mw -l -d /dev/imx-ocotp 0x18 0x00000010
> md 0x20D8004+4
> 
> and the output is:
> 
>   Image Metadata:
>   build: #1 Fri Nov 9 03:15:37 PST 2018
>   release: 2018.04.0
>   parameter: memsize=512
> imx-bbu-nand-fcb: imx_bbu_nand_update: No FCB device!

I remember there was a problem, but I can't find any commit pointing to
it at the moment. Are just just interested in coming over this
situation? If yes you can bootm the new barebox image and update from
that one.

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

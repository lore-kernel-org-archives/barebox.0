Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RsC4z-0002z4-Ue
 for barebox@lists.infradead.org; Tue, 31 Jan 2012 11:40:55 +0000
Date: Tue, 31 Jan 2012 12:40:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120131114045.GO1990@pengutronix.de>
References: <CALQ+5acXuFBGkeRgv+xR8FE2_ykWxbRggEi-AVaJhZm-ZzLk7g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALQ+5acXuFBGkeRgv+xR8FE2_ykWxbRggEi-AVaJhZm-ZzLk7g@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: IIM on iMX27 "how-to" needed
To: Igor <igt1972@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 31, 2012 at 11:36:51AM +0100, Igor wrote:
> Hi,
> 
> I'm trying to read and write the e-fuse banks on my iMX27 with Barebox
> but still unsuccessfully.
> 
> I configured and compiled Barebox with IIM support, so I can see these devices:
> barebox:/ ls -l /dev
> crw-------         32 imx_iim_bank0
> crw-------         32 imx_iim_bank1
> crw-------         32 imx_iim_bank2
> crw-------         32 imx_iim_bank3
> crw-------         32 imx_iim_bank4
> crw-------         32 imx_iim_bank5
> crw-------         32 imx_iim_bank6
> crw-------         32 imx_iim_bank7
> 
> and I get:
> barebox:/ devinfo
> [..]
> `---- imx_iim0
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank0
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank1
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank2
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank3
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank4
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank5
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank6
>      `---- 0x00000000-0x0000001f: /dev/imx_iim_bank7
> 
> barebox:/ devinfo imx_iim0
> resources:
> num   : 0
> start : 0x10028000
> size  : 0x00001000
> driver: imx_iim
> 
> no info available for imx_iim0
> Parameters:
> permanent_write_enable = 0
> explicit_sense_enable = 1
> 
> By the way I don't know how to read and write the fuse banks.
> 
> If I try to read them, I get:
> barebox:/ md -b /dev/imx_iim_bank0
> could not parse: /dev/imx_iim_bank0

The command is correct, the usage is wrong.
See http://wiki.barebox.org/doku.php?id=commands:md and let me know
if that helps (and what could be made better)

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

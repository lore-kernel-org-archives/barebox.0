Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YOYWI-0005xR-Vi
 for barebox@lists.infradead.org; Thu, 19 Feb 2015 21:20:27 +0000
Date: Thu, 19 Feb 2015 22:20:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150219212004.GF12209@pengutronix.de>
References: <29A2697B0516A946B1023D5E798DFCF67BACD87B@mail-yang>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <29A2697B0516A946B1023D5E798DFCF67BACD87B@mail-yang>
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
Subject: Re: bareboxenv-target not loading correctly
To: "Boulais, Marc-Andre" <maboulais@rheinmetall.ca>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Feb 19, 2015 at 04:06:46PM +0000, Boulais, Marc-Andre wrote:
> Hi,
> I am trying to modify the Barebox (v2015.02.0) environment from the application. To do so, I execute the following commands from Linux:
> 
> root@SBC-172:/root mkdir -p env
> root@SBC-172:/root bareboxenv-target -v -l ./env /dev/mtdblock2
> loading env from file /dev/mtdblock2 to ./env
> root@SBC-172:/root ls -al
> drwx------    2 root     root          4096 Jan  1 03:29 .
> drwxr-xr-x   19 root     root          4096 Jan  2  2000 ..
> 
> bareboxenv-target seems to succeed in loading env but the "env" directory has disappeared...

The directory shouldn't be removed, that is a bug. I just sent
a patch.
Anyway, the directory will stay empty even after applying the patch.
That is a side effect of only storing the differences to the default
environment. Once you have made changes they will show up there.

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

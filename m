Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx.rheinmetall.ca ([207.61.105.111])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YOYyM-0001xQ-1L
 for barebox@lists.infradead.org; Thu, 19 Feb 2015 21:49:26 +0000
From: "Boulais, Marc-Andre" <maboulais@rheinmetall.ca>
Date: Thu, 19 Feb 2015 21:48:58 +0000
Message-ID: <29A2697B0516A946B1023D5E798DFCF67BACD935@mail-yang>
References: <29A2697B0516A946B1023D5E798DFCF67BACD87B@mail-yang>
 <20150219212004.GF12209@pengutronix.de>
In-Reply-To: <20150219212004.GF12209@pengutronix.de>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: bareboxenv-target not loading correctly
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Great, It works. Like you said, the directory is no longer empty once I modify the environment. 

Thanks
MA

-----Original Message-----
From: Sascha Hauer [mailto:s.hauer@pengutronix.de] 
Sent: February-19-15 4:20 PM
To: Boulais, Marc-Andre
Cc: barebox@lists.infradead.org
Subject: Re: bareboxenv-target not loading correctly

On Thu, Feb 19, 2015 at 04:06:46PM +0000, Boulais, Marc-Andre wrote:
> Hi,
> I am trying to modify the Barebox (v2015.02.0) environment from the application. To do so, I execute the following commands from Linux:
> 
> root@SBC-172:/root mkdir -p env
> root@SBC-172:/root bareboxenv-target -v -l ./env /dev/mtdblock2 
> loading env from file /dev/mtdblock2 to ./env root@SBC-172:/root ls 
> -al
> drwx------    2 root     root          4096 Jan  1 03:29 .
> drwxr-xr-x   19 root     root          4096 Jan  2  2000 ..
> 
> bareboxenv-target seems to succeed in loading env but the "env" directory has disappeared...

The directory shouldn't be removed, that is a bug. I just sent a patch.
Anyway, the directory will stay empty even after applying the patch.
That is a side effect of only storing the differences to the default environment. Once you have made changes they will show up there.

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

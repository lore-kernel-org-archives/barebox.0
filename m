Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SunoZ-0006u1-1v
 for barebox@lists.infradead.org; Fri, 27 Jul 2012 16:54:59 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 27 Jul 2012 18:54:16 +0200
References: <1343387347-24504-1-git-send-email-j.weitzel@phytec.de>
 <20120727151936.GF30009@pengutronix.de>
In-Reply-To: <20120727151936.GF30009@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201207271854.16758.jbe@pengutronix.de>
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
Subject: Re: [PATCH] omap: use 512k barebox partition
To: barebox@lists.infradead.org

Hi Sascha,

Sascha Hauer wrote:
> On Fri, Jul 27, 2012 at 01:09:07PM +0200, Jan Weitzel wrote:
> > Use 512k NAND Partion for barebox. Problem is we don't know the size of
> > the barebox inside xload. Set it also to 512k
> > Fix enviroment for boards with size in config
>
> The barebox binary has the size encoded into it at offset 0x2c. We could
> use this to transfer the correct size.

Will this be a reliable "API" to the outerworld? Also in future versions of 
Barebox?

I would need this information in my S3C6410 implementation (for NAND and SD 
cards to boot from) so it would be a really helpful feature. But only if it 
is still present in future versions.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

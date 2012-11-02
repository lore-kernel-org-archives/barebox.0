Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TUD15-0005ec-6d
 for barebox@lists.infradead.org; Fri, 02 Nov 2012 08:54:16 +0000
Date: Fri, 2 Nov 2012 09:54:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121102085411.GF1641@pengutronix.de>
References: <1351613312-4506-1-git-send-email-shc_work@mail.ru>
 <20121031213608.GR1641@pengutronix.de>
 <20121101092038.0b71630228ecac770b8b1128@mail.ru>
 <20121101073251.GS1641@pengutronix.de>
 <20121102102419.52e6cc0269ae07ef1b3ff26d@mail.ru>
 <20121102082113.GC1641@pengutronix.de>
 <20121102124443.66678a1d76cceaf646c4507b@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121102124443.66678a1d76cceaf646c4507b@mail.ru>
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
Subject: Re: [PATCH v3 1/3] ARM: Add CLPS711X architecture
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Nov 02, 2012 at 12:44:43PM +0400, Alexander Shiyan wrote:
> On Fri, 2 Nov 2012 09:21:13 +0100
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> ...
> > > Well, if there are no more comments for this series, I will create a v4 with
> > > one more forgotten fix for serial driver (IS_ERR clock check).
> > 
> > Fine, thanks. This should be the final one.
> > 
> > Two last things:
> > 
> > You should add pbl-y += lowlevel.o to your board Makefile. This allows
> > it to compile barebox as a compressed image.
> > 
> > You shouldn't have to overwrite env/bin/mtdparts-add. Instead this
> > should be called from env/init/mtdparts*
> 
> OK, but the changes I'll have to test, so the revised version will be in a week.
> Thank you.

If it works for you then you could fix this later so that you do not
miss the next merge window.

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

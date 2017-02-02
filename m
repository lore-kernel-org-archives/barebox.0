Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cZBbH-0005SA-FS
 for barebox@lists.infradead.org; Thu, 02 Feb 2017 07:14:37 +0000
Date: Thu, 2 Feb 2017 08:14:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170202071413.ts324dxflrwamjg3@pengutronix.de>
References: <1485816659-26091-1-git-send-email-akurz@blala.de>
 <20170201080422.jon2ewtezc66axbi@pengutronix.de>
 <alpine.DEB.2.00.1702012150320.12831@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.00.1702012150320.12831@blala.de>
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
Subject: Re: [PATCH 1/5] ARM i.MX: move cpu_type macros in front of
 cpu_revision code
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Wed, Feb 01, 2017 at 09:53:25PM +0100, Alexander Kurz wrote:
> 
> 
> On Wed, 1 Feb 2017, Sascha Hauer wrote:
> 
> > On Mon, Jan 30, 2017 at 11:50:55PM +0100, Alexander Kurz wrote:
> > > Preparational commit to enable the use of cpu_type macros in imx6_cpu_revision()
> > > 
> > > Signed-off-by: Alexander Kurz <akurz@blala.de>
> > 
> > Applied patches 1-4 for now.
> Is it possible, that 
> 0003-ARM-i.MX6SL-import-clock-infrastructure-from-linux.patch
> is missing for some reasons? I have just pulled next and got only
> the patches 1, 2 and 4

Oops, right. I just added it.

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

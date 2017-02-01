Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cZ1ui-0001oe-Rt
 for barebox@lists.infradead.org; Wed, 01 Feb 2017 20:54:06 +0000
Date: Wed, 1 Feb 2017 21:53:25 +0100 (CET)
From: Alexander Kurz <akurz@blala.de>
In-Reply-To: <20170201080422.jon2ewtezc66axbi@pengutronix.de>
Message-ID: <alpine.DEB.2.00.1702012150320.12831@blala.de>
References: <1485816659-26091-1-git-send-email-akurz@blala.de>
 <20170201080422.jon2ewtezc66axbi@pengutronix.de>
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
Subject: Re: [PATCH 1/5] ARM i.MX: move cpu_type macros in front of
 cpu_revision code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org



On Wed, 1 Feb 2017, Sascha Hauer wrote:

> On Mon, Jan 30, 2017 at 11:50:55PM +0100, Alexander Kurz wrote:
> > Preparational commit to enable the use of cpu_type macros in imx6_cpu_revision()
> > 
> > Signed-off-by: Alexander Kurz <akurz@blala.de>
> 
> Applied patches 1-4 for now.
Is it possible, that 
0003-ARM-i.MX6SL-import-clock-infrastructure-from-linux.patch
is missing for some reasons? I have just pulled next and got only
the patches 1, 2 and 4

> 
> Sascha

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

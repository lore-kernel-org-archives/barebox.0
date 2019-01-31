Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gp8On-0000fD-Tg
 for barebox@lists.infradead.org; Thu, 31 Jan 2019 09:12:43 +0000
Date: Thu, 31 Jan 2019 10:12:37 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Message-ID: <20190131101237.686faaf7@litschi.hi.pengutronix.de>
In-Reply-To: <20190130061119.tpz643ggexlnn27r@pengutronix.de>
References: <1548756816-808-1-git-send-email-thomas.haemmerle1988@gmail.com>
 <20190130061119.tpz643ggexlnn27r@pengutronix.de>
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
Subject: Re: [PATCH] ARM: zynqmp: select macb driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: thomas.haemmerle1988@gmail.com, barebox@lists.infradead.org

On Wed, 30 Jan 2019 07:11:19 +0100, Sascha Hauer wrote:
> Hi Thomas,
> 
> On Tue, Jan 29, 2019 at 11:13:36AM +0100, thomas.haemmerle1988@gmail.com wrote:
> > From: Thomas Haemmerle <thomas.haemmerle1988@gmail.com>
> > 
> > macb supports Xilinx ZynqMP GEM, so select HAS_MACB by default.  
> 
> I think this should be solved by 508b996a62 ("ARM: zynq: add support for
> ethernet") already.

The new Patch selects HAS_MACHB for ARCH_ZYNQMP, while 508b996a62
("ARM: zynq: add support for ethernet") selects it for ARCH_ZYNQ. They
are different SoCs.

Michael

> 
> Sascha
> 
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

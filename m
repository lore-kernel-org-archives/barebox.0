Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYxyV-0001Kx-2P
 for barebox@lists.infradead.org; Thu, 06 Jun 2019 19:23:00 +0000
Received: by mail-lj1-x244.google.com with SMTP id o13so3129635lji.5
 for <barebox@lists.infradead.org>; Thu, 06 Jun 2019 12:22:58 -0700 (PDT)
Date: Thu, 6 Jun 2019 22:22:43 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20190606192241.uxyxdxlsibtutyp4@chr>
References: <20190604105552.20619-1-pmamonov@gmail.com>
 <20190604124457.25u3p7mgfvxrbqjh@pengutronix.de>
 <20190604164311.z5zo4qrfqbt5zalf@localhost.localdomain>
 <20190605051703.gg6q43p5smhxzci4@pengutronix.de>
 <20190605183817.w2vmyumiwo2tkszf@chr>
 <20190606042910.f5tl4vhprhtiwxl6@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606042910.f5tl4vhprhtiwxl6@pengutronix.de>
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
Subject: Re: [PATCH] MIPS: use anonymous labels in ENTRY_FUNCTION_END and
 STOP_WITH_DEBUG_EVENT macros
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jun 06, 2019 at 06:29:10AM +0200, Oleksij Rempel wrote:
> On Wed, Jun 05, 2019 at 09:38:17PM +0300, Peter Mamonov wrote:
> > On Wed, Jun 05, 2019 at 07:17:03AM +0200, Oleksij Rempel wrote:
> > > On Tue, Jun 04, 2019 at 07:43:12PM +0300, Peter Mamonov wrote:
> > > > Hi, Oleksij,
> > > > 
> > > > On Tue, Jun 04, 2019 at 02:44:57PM +0200, Oleksij Rempel wrote:
> > > > > On Tue, Jun 04, 2019 at 01:55:52PM +0300, Peter Mamonov wrote:
> > > > > > Use of global labels of the same name inside ENTRY_FUNCTION_END and
> > > > > > STOP_WITH_DEBUG_EVENT prevents simultaneous use of both macros. It also
> > > > > > prevents multiple use of one of them.
> > > > > 
> > > > > Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > > > > 
> > > > > @Peter, Do you use STOP_WITH_DEBUG_EVENT for something?
> > > > 
> > > > Actually no. I hit this problem when tried to use ENTRY_FUNCTION_END twice to 
> > > > choose relevant DTB depending on some conditions.
> > > 
> > > was you able to implement it?
> > 
> > Yes, something like this:
> > 
> > 		<test a condition, put result into t0>
> > 
> > 		beq	t0, zero, use_other_dtb
> > 		 nop
> > 
> > 		ENTRY_FUNCTION_END(BOARD_PBL_START, some_dtb)
> > 
> > 	use_other_dtb:
> > 		ENTRY_FUNCTION_END(BOARD_PBL_START, other_dtb)
> 
> nice!
> 
> Do you use latest barebox with dynamic relocation support?

Not yet, I'm more than 200 commits behing `next`.

Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

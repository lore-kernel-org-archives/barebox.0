Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCX2-0007Eu-PX
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 16:43:30 +0000
Received: by mail-lf1-x144.google.com with SMTP id l26so16938758lfh.13
 for <barebox@lists.infradead.org>; Tue, 04 Jun 2019 09:43:28 -0700 (PDT)
Date: Tue, 4 Jun 2019 19:43:12 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20190604164311.z5zo4qrfqbt5zalf@localhost.localdomain>
References: <20190604105552.20619-1-pmamonov@gmail.com>
 <20190604124457.25u3p7mgfvxrbqjh@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604124457.25u3p7mgfvxrbqjh@pengutronix.de>
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

Hi, Oleksij,

On Tue, Jun 04, 2019 at 02:44:57PM +0200, Oleksij Rempel wrote:
> On Tue, Jun 04, 2019 at 01:55:52PM +0300, Peter Mamonov wrote:
> > Use of global labels of the same name inside ENTRY_FUNCTION_END and
> > STOP_WITH_DEBUG_EVENT prevents simultaneous use of both macros. It also
> > prevents multiple use of one of them.
> 
> Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>
> 
> @Peter, Do you use STOP_WITH_DEBUG_EVENT for something?

Actually no. I hit this problem when tried to use ENTRY_FUNCTION_END twice to 
choose relevant DTB depending on some conditions.

Regards,
Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.mars-solutions.de ([213.239.212.107])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XoBrU-0005dT-Jx
 for barebox@lists.infradead.org; Tue, 11 Nov 2014 13:52:01 +0000
Message-ID: <1415713894.20385.20.camel@ws-apr.office.loc>
From: Andreas Pretzsch <apr@cn-eng.de>
Date: Tue, 11 Nov 2014 14:51:34 +0100
In-Reply-To: <1415272993-29736-2-git-send-email-l.stach@pengutronix.de>
References: <1415272993-29736-1-git-send-email-l.stach@pengutronix.de>
 <1415272993-29736-2-git-send-email-l.stach@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 2/2] ARM: imx5: add imx5_cpu_lowlevel_init and use in
 all boards
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Do, 2014-11-06 at 12:23 +0100, Lucas Stach wrote:
> This is similar to what we do on imx6 and makes sure we
> apply the errata workarounds early.

Without checking, doesn't this also apply to other Cortex-A8, like the
TI AM335x and OMAP3 chips ?

Reading "ARM Cortex A8 errata" raises this thought...

-- 

carpe noctem engineering
Ingenieurbuero fuer Hard- & Software-Entwicklung Andreas Pretzsch
Dipl.-Ing. (FH) Andreas Pretzsch          Tel. +49-(0)731-5521572
Hahnengasse 3                             Fax: +49-(0)731-5521571
89073 Ulm, Germany                        email: apr@cn-eng.de


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

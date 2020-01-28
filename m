Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwN5k-0000iw-5W
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 09:23:29 +0000
Date: Tue, 28 Jan 2020 10:23:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200128092326.vyuglbphzwncrvj5@pengutronix.de>
References: <20200128053821.677207-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128053821.677207-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH v3 0/5] OP-TEE early loading
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jan 28, 2020 at 06:38:17AM +0100, Rouven Czerwinski wrote:
> v3 of the OP-TEE early loading patch series.
> 
> This allows loading OP-TEE during the lowlevel board initialization,
> instead of loading it before the kernel is started.
> 
> v3:
> - include arm64 setjmp from U-Boot
> - build setjmp unconditionally
> - rename pl2x0 write test function
> 
> v2:
> - fixed smaller nits by Sascha Hauer
> - include the setjmp import
> 
> Rouven Czerwinski (5):
>   optee: move optee_verify_header() to common
>   ARM: import setjmp implementation from U-Boot
>   ARM: add optee early loading function
>   ARM: mach-imx: test PL310 write access
>   user: add documentation for OP-TEE loading

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

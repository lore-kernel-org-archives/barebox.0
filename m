Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFYQt-00034w-Kj
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 06:48:21 +0000
Date: Wed, 2 Oct 2019 08:48:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191002064817.7mrmk4tzab37jqt5@pengutronix.de>
References: <20191001062853.1256-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001062853.1256-1-ahmad@a3f.at>
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
Subject: Re: [PATCH 0/2] dtc: fix breakage of in-barebox libfdt
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Tue, Oct 01, 2019 at 08:28:51AM +0200, Ahmad Fatoum wrote:
> I missed that I have to test CONFIG_BOARD_ARM_GENERIC_DT as well when
> updating dtc. Please apply the first commit before the
> ("scripts/dtc: Update to upstream version v1.5.1") commit, so it's not
> intermittently broken.
> 
> Also attached is a fixup to the documentation that makes note of this.
> 
> Ahmad Fatoum (2):
>   lib: fdt: define INT32_MAX for in-barebox use
>   fixup! Documentation: document barebox device tree handling

Applied, thanks

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

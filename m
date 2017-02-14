Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdXiN-0005NR-5f
 for barebox@lists.infradead.org; Tue, 14 Feb 2017 07:39:57 +0000
Date: Tue, 14 Feb 2017 08:39:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170214073930.ymk44spz5sgsaknu@pengutronix.de>
References: <20170210095655.GA25859@mail.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170210095655.GA25859@mail.ovh.net>
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
Subject: Re: [PATCH 0/9] EFI: drop arch efi
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

On Fri, Feb 10, 2017 at 10:56:55AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Today the EFI is build as an other ARCH when in fact it's just a boot mode
> 
> so move it back to arch/x86 for the spicific x86 part and the common
> to common and driver
> 
> The following changes since commit 55d29525146dcd280987dfd565bfd34f08858fb3:
> 
>   ata: ide-sff: don't call free for ide_port in error path (2017-01-18 12:01:38 +0100)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git
> 
> for you to fetch changes up to 3e07e7f43bcfb5160cc6104f06535f147222570b:
> 
>   efi: bus: add firmware vendor and resision and tables info (2017-02-09 17:13:41 +0800)

The series looks sane. It's currently build-testing.

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

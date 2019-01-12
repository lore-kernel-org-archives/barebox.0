Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giH58-0008Lm-TO
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 11:04:04 +0000
Date: Sat, 12 Jan 2019 12:04:00 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190112110400.GE14273@ravnborg.org>
References: <20190112072234.21878-1-andrew.smirnov@gmail.com>
 <20190112072234.21878-8-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190112072234.21878-8-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 07/16] PCI: Make pci_scan_bus static
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jan 11, 2019 at 11:22:25PM -0800, Andrey Smirnov wrote:
> Pci_scan_bus is not used anyhwere outside pci.c. Mark in static to
> reflect that. No functional change intended.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/pci/pci.c   | 4 +++-
>  include/linux/pci.h | 1 -
>  2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> index 198ec9e995..b0f5ac1b15 100644
> --- a/drivers/pci/pci.c
> +++ b/drivers/pci/pci.c
> @@ -4,6 +4,8 @@
>  #include <linux/sizes.h>
>  #include <linux/pci.h>
>  
> +static unsigned int pci_scan_bus(struct pci_bus *bus);

Move function to avoid this forward?

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

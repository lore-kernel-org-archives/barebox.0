Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x22c.google.com ([2607:f8b0:4002:c05::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ay4k6-0008BN-Mq
 for barebox@lists.infradead.org; Wed, 04 May 2016 21:54:03 +0000
Received: by mail-yw0-x22c.google.com with SMTP id o66so120926073ywc.3
 for <barebox@lists.infradead.org>; Wed, 04 May 2016 14:53:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1461649027-5046-5-git-send-email-andrew.smirnov@gmail.com>
References: <1461649027-5046-1-git-send-email-andrew.smirnov@gmail.com>
 <1461649027-5046-5-git-send-email-andrew.smirnov@gmail.com>
From: Bjorn Helgaas <bhelgaas@google.com>
Date: Wed, 4 May 2016 16:53:21 -0500
Message-ID: <CAErSpo7_dJnSU0=LHqt2Dx=QrjatJDde0QDWdCKR5+mHR7yF1g@mail.gmail.com>
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
Subject: Re: [PATCH 4/9] PCI: imx6: Rename imx6_pcie_start_link() to
 imx6_pcie_establish_link()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Fabio Estevam <fabio.estevam@freescale.com>, barebox@lists.infradead.org

On Tue, Apr 26, 2016 at 12:37 AM, Andrey Smirnov
<andrew.smirnov@gmail.com> wrote:
> Rename imx6_pcie_start_link() to imx6_pcie_establish_link() to follow the
> convention of other DesignWare-based host drivers.  No functional change.
>
> [Andrey Smirnov: port to BB codebase]
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> Acked-by: Pratyush Anand <pratyush.anand@gmail.com>

This is apparently intended for barebox (?), not for the Linux kernel,
so I'm going to ignore it.  I assume you're not looking for any action
from me.  If you are, note that I only act on things posted to
linux-pci@vger.kernel.org.

It would help me sort this out and maybe help future code
archaeologists if your changelog referenced the Linux commit more
explicitly, e.g.,

  port Linux kernel commit fd5da2081b07 ("PCI: imx6: Rename
imx6_pcie_start_link() to imx6_pcie_establish_link()") to barebox

It wouldn't hurt my feelings if you didn't copy me on patches like
this.  I don't really have anything to contribute to barebox, so it's
just something to look at and figure out whether I'm supposed to do
something with it.

Bjorn

> ---
>  drivers/pci/pci-imx6.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
> index 13a8b22..30bc4fe 100644
> --- a/drivers/pci/pci-imx6.c
> +++ b/drivers/pci/pci-imx6.c
> @@ -415,7 +415,7 @@ static int imx6_pcie_wait_for_speed_change(struct pcie_port *pp)
>  }
>
>
> -static int imx6_pcie_start_link(struct pcie_port *pp)
> +static int imx6_pcie_establish_link(struct pcie_port *pp)
>  {
>         struct imx6_pcie *imx6_pcie = to_imx6_pcie(pp);
>         uint32_t tmp;
> @@ -483,7 +483,7 @@ static void imx6_pcie_host_init(struct pcie_port *pp)
>
>         dw_pcie_setup_rc(pp);
>
> -       imx6_pcie_start_link(pp);
> +       imx6_pcie_establish_link(pp);
>  }
>
>  static void imx6_pcie_reset_phy(struct pcie_port *pp)
> --
> 2.5.5
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T4oI3-0006Um-6X
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 07:26:47 +0000
Received: by iaai1 with SMTP id i1so2930809iaa.36
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 00:26:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1345784816-31344-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120824050332.GK6271@game.jcrosoft.org>
 <1345784816-31344-1-git-send-email-plagnioj@jcrosoft.com>
From: Roberto Nibali <rnibali@gmail.com>
Date: Fri, 24 Aug 2012 09:26:24 +0200
Message-ID: <CAONxwYPAHrHorhYsPUiZYaZyt7MM0VdDKPVh79R+xR=HsfbDZA@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/7] dhcp: add global var support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi

Minor nitpick below:

On Fri, Aug 24, 2012 at 7:06 AM, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> This way you can specify as previously set the dhcp parameter via global.dhcp.xxx
> and get the result via global.dhcp.xxx
>
> This is need for the defaultenv-2 to add the bootp suppport.
>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  net/dhcp.c |  100 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 99 insertions(+), 1 deletion(-)
>
> diff --git a/net/dhcp.c b/net/dhcp.c
> index 79efa3e..51c4283 100644
> --- a/net/dhcp.c
> +++ b/net/dhcp.

[...]

> @@ -718,3 +807,12 @@ BAREBOX_MAGICVAR(dhcp_client_id, "cliend id to send to the DHCP server");
>  BAREBOX_MAGICVAR(dhcp_user_class, "user class to send to the DHCP server");
>  BAREBOX_MAGICVAR(dhcp_tftp_server_name, "TFTP server Name returned from DHCP request");
>  BAREBOX_MAGICVAR(dhcp_oftree_file, "OF tree returned from DHCP request (option 224)");
> +
> +BAREBOX_MAGICVAR_NAMED(global_dhcp_bootfile, global.dhcp.bootfile, "bootfile returned from DHCP request");
> +BAREBOX_MAGICVAR_NAMED(global_dhcp_rootpath, global.dhcp.rootpath, "rootpath returned from DHCP request");
> +BAREBOX_MAGICVAR_NAMED(global_dhcp_vendor_id, global.dhcp.vendor_id, "vendor id to send to the DHCP server");
> +BAREBOX_MAGICVAR_NAMED(global_dhcp_client_uuid, global.dhcp.client_uuid, "cliend uuid to send to the DHCP server");

s/cliend/client/

> +BAREBOX_MAGICVAR_NAMED(global_dhcp_client_id, global.dhcp.client_id, "cliend id to send to the DHCP server");

s/cliend/client/

> +BAREBOX_MAGICVAR_NAMED(global_dhcp_user_class, global.dhcp.user_class, "user class to send to the DHCP server");
> +BAREBOX_MAGICVAR_NAMED(global_dhcp_tftp_server_name, global.dhcp.tftp_server_name, "TFTP server Name returned from DHCP request");

s/Name/name/

> +BAREBOX_MAGICVAR_NAMED(global_dhcp_oftree_file, global.dhcp.oftree_file, "OF tree returned from DHCP request (option 224)");

Cheers
Roberto

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

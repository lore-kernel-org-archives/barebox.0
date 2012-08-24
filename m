Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T4o6q-00041I-4e
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 07:15:13 +0000
Received: by iaai1 with SMTP id i1so2914615iaa.36
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 00:15:11 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1345784816-31344-3-git-send-email-plagnioj@jcrosoft.com>
References: <20120824050332.GK6271@game.jcrosoft.org>
 <1345784816-31344-1-git-send-email-plagnioj@jcrosoft.com>
 <1345784816-31344-3-git-send-email-plagnioj@jcrosoft.com>
From: Roberto Nibali <rnibali@gmail.com>
Date: Fri, 24 Aug 2012 09:14:50 +0200
Message-ID: <CAONxwYMTy06HN3_ixBGkTEkrTDEemUDtkUjypFhhxMqwx_EweA@mail.gmail.com>
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
Subject: Re: [PATCH 3/7] dhcp: add retries limit support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi

On Fri, Aug 24, 2012 at 7:06 AM, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> via -r opt, global.dhcp.retries or dhcp_retries
>
> set the priority order;
>
> This will allow to do not stay infinite loop if no dhcp availlable
> for boot sequence as example
>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  net/dhcp.c |   35 +++++++++++++++++++++++++++++++++--
>  1 file changed, 33 insertions(+), 2 deletions(-)
>
> diff --git a/net/dhcp.c b/net/dhcp.c
> index b32af6a..40709e5 100644
> --- a/net/dhcp.c
> +++ b/net/dhcp.c
> @@ -718,13 +718,27 @@ static int dhcp_global_init(void)
>  }
>  late_initcall(dhcp_global_init);
>
> +static void dhcp_getenv_int(const char *name, int *i)
> +{
> +       const char* str = getenv(name);
> +
> +       if (!str)
> +               return;
> +
> +       *i = simple_strtoul(str, NULL, 10);
> +}
> +
>  static int do_dhcp(int argc, char *argv[])
>  {
>         int ret, opt;
> +       int retries = -1;
>
>         dhcp_reset_env();
>
> -       while((opt = getopt(argc, argv, "H:v:c:u:U:")) > 0) {
> +       dhcp_getenv_int("dhcp_retries", &retries);
> +       dhcp_getenv_int("global.dhcp.retries", &retries);
> +
> +       while((opt = getopt(argc, argv, "H:v:c:u:U:r:")) > 0) {
>                 switch(opt) {
>                 case 'H':
>                         dhcp_set_param_data(DHCP_HOSTNAME, optarg);
> @@ -741,9 +755,17 @@ static int do_dhcp(int argc, char *argv[])
>                 case 'U':
>                         dhcp_set_param_data(DHCP_USER_CLASS, optarg);
>                         break;
> +               case 'r':
> +                       retries = simple_strtoul(optarg, NULL, 10);
> +                       break;
>                 }
>         }
>
> +       if (!retries) {
> +               printf("retries is set to zero, set it to -1\n");

I don't think the user needs to know that in the background you're
using -1 to express zero retries. I suppose a comment would suffice.

> +               retries = -1;
> +       }
> +
>         dhcp_con = net_udp_new(0xffffffff, PORT_BOOTPS, dhcp_handler, NULL);
>         if (IS_ERR(dhcp_con)) {
>                 ret = PTR_ERR(dhcp_con);
> @@ -764,11 +786,17 @@ static int do_dhcp(int argc, char *argv[])
>         while (dhcp_state != BOUND) {
>                 if (ctrlc())
>                         break;
> +               if (!retries) {
> +                       ret = ETIMEDOUT;
> +                       goto out1;
> +               }
>                 net_poll();
>                 if (is_timeout(dhcp_start, 3 * SECOND)) {
>                         dhcp_start = get_time_ns();
>                         printf("T ");
>                         ret = bootp_request();
> +                       /* no need to check if retries > 0 as we check if != 0 */
> +                       retries--;
>                         if (ret)
>                                 goto out1;
>                 }
> @@ -803,7 +831,8 @@ BAREBOX_CMD_HELP_OPT  ("-u <client_uuid>",
>  BAREBOX_CMD_HELP_OPT  ("-U <user_class>",
>  "DHCP User class (code 77) submitted in DHCP requests. It can\n"
>  "be used in the DHCP server's configuration to select options\n"
> -"(e.g. bootfile or server) which are valid for barebox clients only.\n");
> +"(e.g. bootfile or server) which are valid for barebox clients only.\n")
> +BAREBOX_CMD_HELP_OPT  ("-r <retry>", "retry limi\n");

s/limi/limit/

Regards
Roberto Nibali

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

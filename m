Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo3.mail-out.ovh.net ([87.98.184.141]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VVkKR-00031X-9m
 for barebox@lists.infradead.org; Mon, 14 Oct 2013 15:45:08 +0000
Received: from mail247.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 19FE1FFCBE9
 for <barebox@lists.infradead.org>; Mon, 14 Oct 2013 17:44:52 +0200 (CEST)
Date: Mon, 14 Oct 2013 17:46:19 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131014154619.GV32444@ns203013.ovh.net>
References: <1381765165-22365-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1381765165-22365-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [SPAM] [PATCH] common: fix possible build problem without
 password support
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 17:39 Mon 14 Oct     , Jan Luebbe wrote:
> In the case where CONFIG_PASSWORD is off, CONFIG_PASSWORD_DEFAULT is
> undefined. As undefined is not "", this causes make to call find -type f.
> If there is a filename containing a :, make will complain about having
> "multiple target patterns"
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  common/Makefile | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/common/Makefile b/common/Makefile
> index 75d924e..6f6e360 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -116,6 +116,7 @@ $(obj)/barebox_default_env.h: $(obj)/barebox_default_env$(barebox_default_env_co
>  	$(call if_changed,env_h)
>  
>  quiet_cmd_pwd_h = PWDH    $@
> +ifdef CONFIG_PASSWORD

??

so if no password then it do

cmd_pwd_h = echo "const char default_passwd[] = \"\";" > $@

that's all

so we do not need to check CONFIG_PASSSORD
>  ifneq ($(CONFIG_PASSWORD_DEFAULT),"")
>  PASSWD_FILE := $(shell cd $(srctree); find $(CONFIG_PASSWORD_DEFAULT) -type f)
>  cmd_pwd_h = echo -n "const char default_passwd[] = \"" > $@; \
> @@ -134,6 +135,7 @@ endif
>  targets += include/generated/passwd.h
>  
>  $(obj)/password.o: include/generated/passwd.h
> +endif
>  
>  # dependencies on generated files need to be listed explicitly
>  $(obj)/version.o: include/generated/compile.h
> -- 
> 1.8.4.rc3
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

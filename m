Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo5.mail-out.ovh.net ([178.32.119.138]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1THJ4p-0001Qb-K2
 for barebox@lists.infradead.org; Thu, 27 Sep 2012 18:44:48 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 16BD3FFAA2C
 for <barebox@lists.infradead.org>; Thu, 27 Sep 2012 20:50:50 +0200 (CEST)
Date: Thu, 27 Sep 2012 20:42:18 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120927184218.GD26553@game.jcrosoft.org>
References: <1348766042-18815-1-git-send-email-s.hauer@pengutronix.de>
 <1348766042-18815-4-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348766042-18815-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 3/3] environment generation: Fix dependencies
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 19:14 Thu 27 Sep     , Sascha Hauer wrote:
> The dependencies for generating the environment do not work properly:
> 
> - If files are removed from the defaultenv, a subsequent make will not
>   update the default environment.
> - If CONFIG_DEFAULT_ENVIRONMENT_PATH changes, the default environment
>   also will not be regenerated.
> 
> This patch fixes this by introducing a cmd_env which has the content of
> $(ENV_FILES) in the command so that the if_changed mechanism recognizes
> a change when $(ENV_FILE) changes. This also results in a nice "  ENV "
> string in the build process.
> 

we still have an toehr annoying bug generte the temporary env in srctree
instead of objtree

Best Regrards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

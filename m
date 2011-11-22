Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RSlC6-0007Vc-F7
 for barebox@lists.infradead.org; Tue, 22 Nov 2011 07:55:06 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id E795BDC8C27
 for <barebox@lists.infradead.org>; Tue, 22 Nov 2011 09:01:25 +0100 (CET)
Date: Tue, 22 Nov 2011 08:52:35 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111122075235.GJ21480@game.jcrosoft.org>
References: <1319363952-4908-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1319363952-4908-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] password: remove not used variable 'second'
To: barebox@lists.infradead.org

On 17:59 Sun 23 Oct     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
ping 

Best Regards,
J.
>  common/password.c |    3 +--
>  1 files changed, 1 insertions(+), 2 deletions(-)
> 
> diff --git a/common/password.c b/common/password.c
> index ece7704..311f9cb 100644
> --- a/common/password.c
> +++ b/common/password.c
> @@ -42,13 +42,12 @@ int password(unsigned char *passwd, size_t length, int flags, int timeout)
>  	unsigned char *buf = passwd;
>  	int pos = 0;
>  	unsigned char ch;
> -	uint64_t start, second;
> +	uint64_t start;
>  
>  	if (!passwd)
>  		return -EINVAL;
>  
>  	start = get_time_ns();
> -	second = start;
>  
>  	do {
>  		if (tstc()) {
> -- 
> 1.7.7

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

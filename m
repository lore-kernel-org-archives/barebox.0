Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f218.google.com ([209.85.218.218])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NwZt5-00028F-Pn
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 11:45:44 +0000
Received: by bwz10 with SMTP id 10so14404317bwz.2
	for <barebox@lists.infradead.org>; Tue, 30 Mar 2010 04:45:38 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
	<1269855383-22716-9-git-send-email-s.hauer@pengutronix.de>
Date: Tue, 30 Mar 2010 13:45:33 +0200
In-Reply-To: <1269855383-22716-9-git-send-email-s.hauer@pengutronix.de>
	(Sascha Hauer's message of "Mon, 29 Mar 2010 11:36:19 +0200")
Message-ID: <87iq8eav8i.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
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
Subject: Re: [PATCH 08/12] echo: add -e option support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:

 Sascha> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
 Sascha> ---
 Sascha>  commands/echo.c |   52 +++++++++++++++++++++++++++++++++++++++++++++++++++-
 Sascha>  1 files changed, 51 insertions(+), 1 deletions(-)

 Sascha> diff --git a/commands/echo.c b/commands/echo.c
 Sascha> index d5640a0..6f4f136 100644
 Sascha> --- a/commands/echo.c
 Sascha> +++ b/commands/echo.c
 Sascha> @@ -26,12 +26,59 @@
 Sascha>  #include <fcntl.h>
 Sascha>  #include <errno.h>
 
 Sascha> +static int my_fputs(int fd, const char *s)

That's not a very descriptive name - What about something like
advanced_fputs, escape_fputs or format_fputs?

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

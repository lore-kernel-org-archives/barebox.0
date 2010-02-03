Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f223.google.com ([209.85.219.223])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NcmlB-00060q-5b
	for barebox@lists.infradead.org; Wed, 03 Feb 2010 21:27:45 +0000
Received: by ewy23 with SMTP id 23so37791ewy.4
	for <barebox@lists.infradead.org>; Wed, 03 Feb 2010 13:27:34 -0800 (PST)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <20100203195105.GA32322@morgana.gnudd.com>
Date: Wed, 03 Feb 2010 22:27:32 +0100
In-Reply-To: <20100203195105.GA32322@morgana.gnudd.com> (Alessandro Rubini's
	message of "Wed, 3 Feb 2010 20:51:06 +0100")
Message-ID: <87wryuggcb.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCH] Documentation/porting.txt: s/barebox/u-boot/ wrongly
	renamed
To: Alessandro Rubini <rubini-list@gnudd.com>
Cc: barebox@lists.infradead.org

>>>>> "Alessandro" == Alessandro Rubini <rubini-list@gnudd.com> writes:

 Alessandro> From: Alessandro Rubini <rubini@gnudd.com>
 Alessandro> Signed-off-by: Alessandro Rubini <rubini@gnudd.com>
 Alessandro> ---
 Alessandro>  Documentation/porting.txt |    2 +-
 Alessandro>  1 files changed, 1 insertions(+), 1 deletions(-)

 Alessandro> diff --git a/Documentation/porting.txt b/Documentation/porting.txt
 Alessandro> index ccfe598..48eebdf 100644
 Alessandro> --- a/Documentation/porting.txt
 Alessandro> +++ b/Documentation/porting.txt
 Alessandro> @@ -1,5 +1,5 @@
 
 Alessandro> -When porting from old barebox the follwing steps must be taken (please complain
 Alessandro> +When porting from old u-boot the follwing steps must be taken (please complain
 Alessandro>  if there's something missing here ;)

There's also s/follwing/following/

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

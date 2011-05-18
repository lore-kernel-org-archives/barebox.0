Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by canuck.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QMbh6-0007Ji-45
	for barebox@lists.infradead.org; Wed, 18 May 2011 08:01:24 +0000
Date: Wed, 18 May 2011 09:50:00 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110518075000.GD15292@game.jcrosoft.org>
References: <1305662741-7509-1-git-send-email-jacmet@sunsite.dk>
	<20110518050826.GG18699@game.jcrosoft.org>
	<87boz0fpmz.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87boz0fpmz.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCHv2] commands: add md5/sha1/sha256sum commands using the
	digest api
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: barebox@lists.infradead.org

 
>  >> +	buf = xmalloc(4096);
> 
>  Jean-Christophe> do we really need to allocate the buffer everytime?
> 
> Not really, but it's simpler to do like this. It's only once per file so
> hardly a performance issue.
> 
>  >> +	while (*argv) {
>  >> +		char *filename = "/dev/mem";
>  >> +		ulong start = 0, size = ~0;
> 
>  Jean-Christophe> ulong so so if we want to support 64bit vfs we need to
>  Jean-Christophe> use an other type
> 
> ulong is what parse_area_spec and the other memory commands use.
Just note that the file size could be more than 32bit
and uze size_t or ssize_t make more sense in my mind
of we can use loff_t

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

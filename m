Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail2.gnudd.com ([213.203.150.91] helo=mail.gnudd.com)
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sx1uR-0006m3-Nb
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 20:22:45 +0000
Date: Thu, 2 Aug 2012 22:22:02 +0200
From: Alessandro Rubini <rubini-list@gnudd.com>
Message-ID: <20120802202202.GA22646@mail.gnudd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120802155145.GA28426@mail.gnudd.com>
References: <20120802155145.GA28426@mail.gnudd.com> 
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
Subject: Re: changing environment at build time
To: rubini-list@gnudd.com
Cc: barebox@lists.infradead.org

I wrote:
> Since uncompressed environent areas are not supported any more, what is
> the preferred method to change the default environment variables?

Actually, by removing compressing code the environment is uncompressed
itself, but it looks like I have other problems that are not yet
completely clear to me.

I'm still curious about how to change mac address at flash time, but
the question is not urgent any more. Sorry for disturbing

/alessandro

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giGq6-0003L1-QR
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 10:48:32 +0000
Date: Sat, 12 Jan 2019 11:48:22 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190112104822.GB14273@ravnborg.org>
References: <20190112055524.7733-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190112055524.7733-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 00/18] PCIe support for i.MX7
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey.

> Feedback is welcome!

I have looked through the patches - and nothing jumped at me.
A few places could use a newline but not worth a re-spin.

I personal dislike filenames like "helpers.c" but thats pure bikeshedding.

Looks good with the simple regulator support, which most likely will prove
useful later also for other drivers.
I hope we do not need deferred probe much...

With deferred probe ported from the kernel, I wonder
how far we are from porting the devm_* functionlity too.
Not the I think this will share code with deferred probe,
just that this is another nice kernel idiom we could
benefit from in barebox.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

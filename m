Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1coG5O-0004oi-8j
 for barebox@lists.infradead.org; Wed, 15 Mar 2017 21:04:00 +0000
Date: Wed, 15 Mar 2017 22:03:35 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170315210335.GC3531@ravnborg.org>
References: <20170314155222.11657-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170314155222.11657-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 00/11] AT91, at91sam9x5ek updates (part II/III)
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Mar 14, 2017 at 08:52:11AM -0700, Andrey Smirnov wrote:
> Hi everone,
> 
> This is the second batch of AT91 related patches (original thread
> [1]). The patches gathered in this set are with a few exceptions are
> patches adding DT probing support for various AT91 drivers.
> 
> Feedback from Sam has been incorporated, but other than that the code
> should be as it was in [1].

Everything looked good to me - except two small nits about missing const.

Feel free to add my:
Acked-by: Sam Ravnborg <sam@ravnborg.org>

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

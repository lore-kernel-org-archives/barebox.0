Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGKEr-0005vC-56
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 08:46:34 +0000
Date: Sat, 27 Oct 2018 10:46:20 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20181027084620.GA30886@ravnborg.org>
References: <20181027013230.24387-1-andrew.smirnov@gmail.com>
 <20181027013230.24387-6-andrew.smirnov@gmail.com>
 <20181027082656.GC28052@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181027082656.GC28052@ravnborg.org>
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
Subject: Re: [PATCH 5/6] drivers: base: Share code for
 dev_request_mem_region*()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 27, 2018 at 10:26:56AM +0200, Sam Ravnborg wrote:
> Hi Andrey,
> 
> On Fri, Oct 26, 2018 at 06:32:29PM -0700, Andrey Smirnov wrote:
> > Both dev_request_mem_region() and dev_request_mem_region_err_null()
> > implement exactly the same functionality different only in error
> > reporting value. Change the code to make use of a common generic
> > function whose return type can be specified via an argument.
> 
> Same story as PATCH 6/6 where a helper functions does
> two things depending on a bool.
> For simple functions like this my personal preference
> is to keep the small functions that are more explicit.
Hmm, seems coffee did not kick in yet.
There is only this single patch with the boolean argument.
Sorry for the noise.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

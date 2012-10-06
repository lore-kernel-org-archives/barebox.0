Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TKaJs-0003HE-Sx
 for barebox@lists.infradead.org; Sat, 06 Oct 2012 19:45:54 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1349455505-31731-1-git-send-email-s.hauer@pengutronix.de>
 <1349455505-31731-3-git-send-email-s.hauer@pengutronix.de>
 <87txu8y9rb.fsf@free.fr> <20121005213302.GZ1322@pengutronix.de>
Date: Sat, 06 Oct 2012 21:44:54 +0200
In-Reply-To: <20121005213302.GZ1322@pengutronix.de> (Sascha Hauer's message of
 "Fri, 5 Oct 2012 23:33:02 +0200")
Message-ID: <87obkfxu4p.fsf@free.fr>
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
Subject: Re: [PATCH 2/4] introduce region_overlap() function
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:
> You made me curious. I tried to compile both and here is the result on
> ARM (I swapped the arguments left and right of the &&):
>
...zip...
>
> Maybe gcc isn't so clever on other architectures, I don't know ;)

You're right.
Same conclusion on x86 with gcc 4.7. I had tried that a long time ago (maybe 10
years or so) on x86, benchmarking both pure C and Java on this very function (it
was for aircrafts timeslots conflicts discovery).

At that time, the "startA <= endB && endA >= startB" was fastest. So compilation
technique have improved enough to write maintainable code after all :)

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

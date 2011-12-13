Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RaPx8-0004Pi-U5
 for barebox@lists.infradead.org; Tue, 13 Dec 2011 10:51:20 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1323710046-4455-1-git-send-email-robert.jarzmik@free.fr>
 <20111213092147.GC27267@pengutronix.de>
Date: Tue, 13 Dec 2011 11:51:10 +0100
In-Reply-To: <20111213092147.GC27267@pengutronix.de> (Sascha Hauer's message
 of "Tue, 13 Dec 2011 10:21:47 +0100")
Message-ID: <87vcpkycbl.fsf@free.fr>
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
Subject: Re: [PATCH 0/2] drivers/mtd: add a core
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> I created the nand_oob device mainly for debugging purposes. It can be
> convenient to be able to see the oob data. As this has no practical
> use besides debugging it can be easily replaced with an interleaved
> data/oob device. The oob device is quite inconvenient to use anyway
> since it requires some calculating to get the oob data for a given
> page.
True. What we would need to make it simple :
 - have arithmetic expressions in hush
 - have a "dd" command with options skip,bs,count
   => that is actually a requirement to flash (as cp uses blocks of 4096, while
   flash with oob wants block of writesize+oobsize which are seldom multiples of
   512).

I was thinking that a "dd" command would be handy. Would you accept it in
barebox ?

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

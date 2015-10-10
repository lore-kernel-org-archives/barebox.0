Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp06.smtpout.orange.fr ([80.12.242.128]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zkqrw-0003AG-MY
 for barebox@lists.infradead.org; Sat, 10 Oct 2015 09:55:13 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1444341979-19157-8-git-send-email-sebastian.hesselbarth@gmail.com>
 <87a8rr864c.fsf@belgarion.home> <5618DC1F.90800@gmail.com>
Date: Sat, 10 Oct 2015 11:49:27 +0200
In-Reply-To: <5618DC1F.90800@gmail.com> (Sebastian Hesselbarth's message of
 "Sat, 10 Oct 2015 11:36:31 +0200")
Message-ID: <87wpuv6ok8.fsf@belgarion.home>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 07/17] mtd: nand_mrvl_nfc: Use Auto Read Status on
 program/erase
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> writes:

> And the reason why I didn't do any timing rework is that DT
> infrastructure for passing timing information, ONFI parsing, aso
> is still very vague. I really need more time to think about the
> best way to deal with it.
>
> For example, ONFI timings give you a set of timings but they do
> not specify tPROG, tERASE and friends. Those have to be parsed
> from some other ONFI commands. I really want to do this step
> by step and it has to be in-sync with Linux mtd... something
> that would stall NAND support on Armada a little while.
>
> Bottom-line: If the Auto RS feature doesn't break PXA, I'd
> appreciate if it is enabled at least until I can confirm
> proper timings are being read for the device I have.
I'll make the test.
And yes, if no breakage, that's a good reason, it even deserves a note in the
commit message, at least that without it you have timeout issues on Armada.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

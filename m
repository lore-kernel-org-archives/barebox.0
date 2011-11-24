Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RTguT-0004o2-Bs
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 21:32:46 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1322103764-6265-1-git-send-email-robert.jarzmik@free.fr>
 <4ECE0A0C.8070301@pengutronix.de>
Date: Thu, 24 Nov 2011 22:32:37 +0100
In-Reply-To: <4ECE0A0C.8070301@pengutronix.de> (Marc Kleine-Budde's message of
 "Thu, 24 Nov 2011 10:10:36 +0100")
Message-ID: <87ty5tw6iy.fsf@free.fr>
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
Subject: Re: [PATCH 0/9] Initial PXA support and Mitac MIOA701 board
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

Marc Kleine-Budde <mkl@pengutronix.de> writes:

> On 11/24/2011 04:02 AM, Robert Jarzmik wrote:
>> This patchset aims at providing support for the Mitac Mio A701 board.
>> The core pxa support was taken from barebox development tree, and
>> brought up to date with current development tree.
>
> Good to see someone working on the PXA again!
>
> Please squash the patches 1+2+3+7+8 (please add a GPLv2 header to
> arch/arm/mach-pxa/devices.c and
> arch/arm/mach-pxa/include/mach/devices.h). Please squash patches 4+5+6
>
> Please add your S-o-b to all patches.
Ok, will be done for v2.

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

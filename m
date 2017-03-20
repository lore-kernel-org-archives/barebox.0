Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cpntT-0001pL-Cw
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 03:22:05 +0000
Received: by mail-pf0-x243.google.com with SMTP id p189so9719879pfp.0
 for <barebox@lists.infradead.org>; Sun, 19 Mar 2017 20:21:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170317121947.qgopgneagvet6tg5@pengutronix.de>
References: <20170316150448.11773-1-andrew.smirnov@gmail.com>
 <20170317121947.qgopgneagvet6tg5@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 19 Mar 2017 20:21:41 -0700
Message-ID: <CAHQ1cqHywBLYqDTKMP7atGLZtM4p9Wh7Cbz5SYaX1pQLfa2VmA@mail.gmail.com>
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
Subject: Re: [PATCH v2 00/11] AT91, at91sam9x5ek updates (part II/III)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, Mar 17, 2017 at 5:19 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Andrey,
>
> On Thu, Mar 16, 2017 at 08:04:37AM -0700, Andrey Smirnov wrote:
>> Hi everone,
>>
>> This is v2 of the second batch of AT91 related patches (original thread
>> [1]). The patches gathered in this set are with a few exceptions are
>> patches adding DT probing support for various AT91 drivers.
>>
>> Feedback from Sam has been incorporated, but other than that the code
>> should be as it was in [1].
>>
>> Any feedback is appreciated.
>
> Applied for now, let's see what the autobuilder tells us.
>
> Have you verified the code can still run on AT91 SoCs which don't use
> the common clock code?

Just went back and double checked with the HW I have at my disposal
(SAM5D3 Xplained and AT91SAM9x5EK) and did a basic boot test for
codebase before and after part I + part II.  I found a couple of build
problems (fixup patch sent to the mailing list), but other than that
both boards booted as expected in all cases.

I did have a problem with NAND driver on SAMA5, which was causing
Barebox to hang, but since it was present in the build without any of
my patches, I am inclined to think it is an unrelated regression.

Regards,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x234.google.com ([2a00:1450:4013:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ue1Bd-0001eM-5Z
 for barebox@lists.infradead.org; Sun, 19 May 2013 10:49:58 +0000
Received: by mail-ea0-f180.google.com with SMTP id g10so3345049eak.39
 for <barebox@lists.infradead.org>; Sun, 19 May 2013 03:49:34 -0700 (PDT)
Message-ID: <5198AE3B.4080204@gmail.com>
Date: Sun, 19 May 2013 12:49:31 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1368400146-30443-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130519073403.GY32299@pengutronix.de> <5198883E.5080803@gmail.com>
 <20130519103936.GA32299@pengutronix.de>
In-Reply-To: <20130519103936.GA32299@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] of: add ranges address translation for default bus
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 05/19/2013 12:39 PM, Sascha Hauer wrote:
> On Sun, May 19, 2013 at 10:07:26AM +0200, Sebastian Hesselbarth wrote:
>> On 05/19/2013 09:34 AM, Sascha Hauer wrote:
>>> First of all you dropped 1:1 translation, see the attached fixup.
>>
>> I know I dropped it, but have you tried empty/bool properties?
>> I had no luck with an empty/bool ranges, so I removed the 1:1
>> translation by empty property and wanted to take a look at bool
>> props first.
>
> Probably because of_get_property doesn't seem to be 100% Linux
> compatible. Our version returns NULL for empty properties whereas
> the Linux version seems to return some valid pointer for zero length
> properties.

I knew there was something ;)

> I used of_find_property instead in my fixup, but maybe it's better
> to change the behaviour of of_get_property instead.

Yes. With the next mvebu consolidation patches, we get rid of any
board specific code for Armada 370/XP, Dove, and Kirkwood. On top
of that, I then start with replacing static timer and uart
registration with DT probed devices. That is when I need ranges
translation.

I can rework DT ranges and bool properties, send a patch set before
mvebu DT, and you drop this one.

But I will not start working on it before Thomas finds some time to
test/comment on the (not yet) published consolidation patches.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

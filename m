Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22c.google.com ([2a00:1450:4013:c01::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VjlcT-0000KB-1m
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 07:57:41 +0000
Received: by mail-ea0-f172.google.com with SMTP id q10so332045ead.17
 for <barebox@lists.infradead.org>; Thu, 21 Nov 2013 23:57:18 -0800 (PST)
Message-ID: <528F0E5B.8010903@gmail.com>
Date: Fri, 22 Nov 2013 08:57:15 +0100
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1385064684-28363-1-git-send-email-antonynpavlov@gmail.com>
 <1385064684-28363-2-git-send-email-antonynpavlov@gmail.com>
 <20131122072008.GI24559@pengutronix.de>
 <20131122114958.6d6ec0a93ec910d06216b845@niisi.msk.ru>
In-Reply-To: <20131122114958.6d6ec0a93ec910d06216b845@niisi.msk.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] gpiolib: import gpio_request_array() from linux 3.7
To: "Antony N. Pavlov" <antony@niisi.msk.ru>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11/22/2013 08:49 AM, Antony N. Pavlov wrote:
> On Fri, 22 Nov 2013 08:20:08 +0100
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
>> Hi Antony,
>>
>> On Fri, Nov 22, 2013 at 12:11:24AM +0400, Antony Pavlov wrote:
>>> Also import related functions gpio_request_one() and
>>> gpio_free_array().
>>>
>>> This commit imports code from linux 3.7 as
>>> the more recent linux kernel versions use gpiolib descriptors,
>>> see this commit for details:
>>>
>>>    commit 372e722ea4dd4ca11c3d04845e11cbc15f32144c
>>>    Author: Alexandre Courbot <acourbot@nvidia.com>
>>>    Date:   Sun Feb 3 01:29:29 2013 +0900
>>>
>>>        gpiolib: use descriptors internally
>>>
>>>        Make sure gpiolib works internally with descriptors and (chip, offset)
>>>        pairs instead of using the global integer namespace. This prepares the
>>>        ground for the removal of the global gpio_desc[] array and the
>>>        introduction of the descriptor-based GPIO API.
>>>
>>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>>
>> What a pitty, we duplicated some work. I created exactly the same patch
>> recently but haven't posted it yet, shame on me.
>
> I must say "Thanks!" to Sebastian Hesselbarth. It's him who introduced
> get_direction callback. His patch conflicted with patch in my local repo.
> So I made the decision to post my patch as soon as possible.

I added that callback because I needed it for working on Marvell Berlin
support. Don't expect too fancy stuff, but as soon as I find some time
to work out the Chipidea USB device driver, I'll be posting patches for
Chromecast.

The get_direction callback gives valuable information for unknown HW :P

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

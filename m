Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zluem-0008SZ-JU
 for barebox@lists.infradead.org; Tue, 13 Oct 2015 08:10:01 +0000
Received: by wijq8 with SMTP id q8so19168413wij.0
 for <barebox@lists.infradead.org>; Tue, 13 Oct 2015 01:09:38 -0700 (PDT)
References: <1444339185-17508-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20151012061112.GJ7858@pengutronix.de> <561B6305.40306@gmail.com>
 <561C014A.7010401@gmail.com> <20151013080058.GC7858@pengutronix.de>
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Message-ID: <561CBC3F.9040707@gmail.com>
Date: Tue, 13 Oct 2015 10:09:35 +0200
In-Reply-To: <20151013080058.GC7858@pengutronix.de>
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
Subject: Re: [PATCH] fs: Fix memcpy_sz for remaining count/rwsize
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13.10.2015 10:00, Sascha Hauer wrote:
> On Mon, Oct 12, 2015 at 08:51:54PM +0200, Sebastian Hesselbarth wrote:
>> On 12.10.2015 09:36, Sebastian Hesselbarth wrote:
>> I used
>>
>> memcpy -s /mnt/image.img -d /dev/nand0.u-boot.bb 0 0
>>
>> i.e. I did not specify any rwsize option. Looking at the code,
>> mem_parse_options does initialize mode with 0 and memcpy_sz
>> should use plain memcpy as fallback.
>>
>> However, if I look at include/fcntl.h, I see that O_RWSIZE_8
>> collides with O_CREAT. I think that is the root cause of the
>> 64b memcpy_sz issue I am suffering from?
>
> Oh Damned! /me hiding under a brown paper bag.
>
> I don't know how you are calling memcpy_sz, but that could lead to
> these kind problems.

memcpy_sz is called by fs/fs.c when using memcpy command above.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

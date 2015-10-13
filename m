Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlwH4-0008W5-N5
 for barebox@lists.infradead.org; Tue, 13 Oct 2015 09:53:39 +0000
Received: by wicgb1 with SMTP id gb1so81816161wic.1
 for <barebox@lists.infradead.org>; Tue, 13 Oct 2015 02:53:17 -0700 (PDT)
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <87d1wk74nt.fsf@belgarion.home> <561BFECA.1010105@gmail.com>
 <87k2qr6go0.fsf@belgarion.home> <561C111E.7010106@gmail.com>
 <874mhv5cxm.fsf@belgarion.home>
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Message-ID: <561CD48A.9000301@gmail.com>
Date: Tue, 13 Oct 2015 11:53:14 +0200
In-Reply-To: <874mhv5cxm.fsf@belgarion.home>
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
Subject: Re: [PATCH 00/17] Armada 370/XP NAND driver
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

On 13.10.2015 11:35, Robert Jarzmik wrote:
> Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> writes:
>
>> On 12.10.2015 21:16, Robert Jarzmik wrote:
>>> Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> writes:
>>>
>>>> I have prepared a branch for you based on above v2015.10.0 to ease
>>>> testing with all comments included so far:
>>>>
>>>> https://github.com/shesselba/barebox-dove.git testing/nfc-for-robert
>>> That's cool, really.
>>>
>>> It doesn't work yet :
>>> 	clk = clk_get_sys("nand", NULL);
>>> 	printf("%s(): clk = %p\n", __func__, clk);
>>> =>
>>>           zylonite_devices_init(): clk = fffffffe
>>
>> Ok, thanks for testing.
>>
>> I've fast-forward pushed the branch with one last try for today again.
>> Misread clk_get, clk_find and clk_register_clkdev and friends.
> Well, I still have a probe error :
> 	alloc_nand_resource(): clk_get() -> fffffffe
> 	mrvl_nand mrvl_nand0: alloc nand resource failed
> 	mrvl_nand mrvl_nand0: probe failed: No such file or directory
> 	zylonite_devices_init(): clk = 83703328

Hmm. I have to have a closer look at how clkdev lookup is supposed
to work then. Thanks for testing up to here, it will take a day or
two until I can get back to it.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

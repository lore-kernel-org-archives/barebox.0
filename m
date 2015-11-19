Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22b.google.com ([2a00:1450:400c:c09::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzYRY-00030I-Bn
 for barebox@lists.infradead.org; Thu, 19 Nov 2015 23:16:44 +0000
Received: by wmww144 with SMTP id w144so137385253wmw.0
 for <barebox@lists.infradead.org>; Thu, 19 Nov 2015 15:16:21 -0800 (PST)
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <87d1wk74nt.fsf@belgarion.home> <561BFECA.1010105@gmail.com>
 <87k2qr6go0.fsf@belgarion.home> <561C111E.7010106@gmail.com>
 <874mhv5cxm.fsf@belgarion.home> <561CD48A.9000301@gmail.com>
 <20151013102725.GH7858@pengutronix.de> <87wpur3ves.fsf@belgarion.home>
 <562017CD.4050105@gmail.com> <877fmm3bea.fsf@belgarion.home>
 <874mhlz6iq.fsf@belgarion.home>
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Message-ID: <564E5842.9010700@gmail.com>
Date: Fri, 20 Nov 2015 00:16:18 +0100
In-Reply-To: <874mhlz6iq.fsf@belgarion.home>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 00/17] Armada 370/XP NAND driver
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

On 20.10.2015 21:25, Robert Jarzmik wrote:
> Robert Jarzmik <robert.jarzmik@free.fr> writes:
> 
>> Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> writes:
>>
>>> Robert,
>>>
>>> I pushed another version of the patch set with the following changes:
> 
> Okay, with the latest version (a6400be (HEAD, test-sebastian) mtd:
> nand_mrvl_nfc: Add optimized timings for Samsung K9K8G08U) zylonite is working
> all right.

Robert,

thanks again for patient testing. I ran out of time before
vacation but now I plan to resend the series rebased on
latest barebox.

I assume you are fine with me adding your Tested-by on the
next version?

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

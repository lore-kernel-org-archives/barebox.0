Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22a.google.com ([2a00:1450:4013:c01::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uv2W3-0003RO-W2
 for barebox@lists.infradead.org; Fri, 05 Jul 2013 09:41:25 +0000
Received: by mail-ea0-f170.google.com with SMTP id h10so1384334eaj.1
 for <barebox@lists.infradead.org>; Fri, 05 Jul 2013 02:41:02 -0700 (PDT)
Message-ID: <51D694AA.8070405@gmail.com>
Date: Fri, 05 Jul 2013 11:40:58 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372789849-12194-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130704073706.GV516@pengutronix.de> <51D55F28.8080801@gmail.com>
 <20130705065738.GI516@pengutronix.de>
In-Reply-To: <20130705065738.GI516@pengutronix.de>
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
Subject: Re: [PATCH v2 00/10] ARM: mvebu: DT support, SPI, GPIO driver, and
 Dove DT
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 07/05/13 08:57, Sascha Hauer wrote:
> On Thu, Jul 04, 2013 at 01:40:24PM +0200, Sebastian Hesselbarth wrote:
>> currently mvebu on next is broken because of missing
>> "OF: address and device related sync and cleanup" patch set.
>>
>> I should have stated clearly that this patch set depends on
>> the former set.
>>
>> Can you re-test the OF address/device patches and check if
>> they still break SPI chip select gpio on efikasb?
>
> I applied the series and based the Marvell patches ontop of it. I
> haven't tested on EfiksSB but on another board with a SPI controller, so
> I assume this issue is fixed now.

Ok, I explicitly tested of_get_named_gpio with lcd-gpio driver on Dove.
If there are more issues on the now applied set, please do not hesitate
to mention it and request fixes.

> Please note that your of address cleanup series adds about 1.8k to the
> binary size. This doesn't sound too much, but such stuff really sums up
> over time. I agree that we can't do without proper address translation
> in the future, so I applied it. Just be aware in the future that we
> still need a good compromise between binary size and sophisticated code.

True. Now that I can start improving DT only mach-mvebu, I will have an
extra eye on what of the existing and imported functions can be
converted or simplified. If it leads to a significant binary size
reduction, I will send patches.

I will also prepare the last remaining node looping fix for
of_find_node_with_property later.

Thanks for the reviews!

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

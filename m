Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zkxmr-0004Ru-0W
 for barebox@lists.infradead.org; Sat, 10 Oct 2015 17:18:25 +0000
Received: by wicge5 with SMTP id ge5so105015299wic.0
 for <barebox@lists.infradead.org>; Sat, 10 Oct 2015 10:18:02 -0700 (PDT)
Message-ID: <56194847.5070908@gmail.com>
Date: Sat, 10 Oct 2015 19:17:59 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1444341979-19157-16-git-send-email-sebastian.hesselbarth@gmail.com>
 <87612f85yz.fsf@belgarion.home>
In-Reply-To: <87612f85yz.fsf@belgarion.home>
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
Subject: Re: [PATCH 15/17] mtd: nand_mrvl_nfc: Add support for NDCB3 register
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

On 10.10.2015 10:48, Robert Jarzmik wrote:
> Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> writes:
>
>> Newer versions of PXA3xx NAND controller support a 4th Command Buffer
>> register. Add the required HWFLAGS and additional write to NDCB0.
>>
>> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> Hi quite like the hwflags approach, this is something that would be good in
> linux kernel too :)

Definetely. I have the bad feeling that Berlin NAND IP is - as always -
"same same but different" ;)

> Acked-by: Robert Jarzmik <robert.jarzmik@free.fr>
>
> Cheers.
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

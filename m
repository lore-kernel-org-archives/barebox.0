Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s250.sam-solutions.net ([217.21.49.219])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YG2cg-0007wR-Me
 for barebox@lists.infradead.org; Tue, 27 Jan 2015 09:39:51 +0000
Message-ID: <54C75CC8.4090001@sam-solutions.com>
Date: Tue, 27 Jan 2015 12:39:20 +0300
From: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
MIME-Version: 1.0
References: <1422013301-16827-1-git-send-email-d.lavnikevich@sam-solutions.com>
 <1422013735-19774-1-git-send-email-d.lavnikevich@sam-solutions.com>
 <20150127080927.GT12209@pengutronix.de> <4760408.BfXKAVH3vr@lws-hemp>
In-Reply-To: <4760408.BfXKAVH3vr@lws-hemp>
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
Subject: Re: [PATCH 2/2] dts:imx6:pfla02: Align nand partitions by 512k
To: Christian Hemp <c.hemp@phytec.de>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 27/01/15 12:35, Christian Hemp wrote:
> Hello Sascha,
>
> Am Dienstag, 27. Januar 2015, 09:09:27 schrieb Sascha Hauer:
>>
>> The partition size for barebox-environment and the devicetree used to be
>> one eraseblock only. Now it's again only one eraseblock at least for the
>> 4k Page size variants. If one of those blocks is bad the board becomes
>> unusable. I think the partitions should be at least two eraseblocks.
>> That of course would make them quite big.
>>
>> Any opinions about this?
>
> we agree with your opinion.
Ok, then I will correct partitions to be aligned by two eraseblocks and 
will resend patch.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzhkN-0001W6-Dk
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 07:36:01 +0000
Received: by mail-wi0-f174.google.com with SMTP id bs8so7202199wib.13
 for <barebox@lists.infradead.org>; Wed, 25 Jun 2014 00:35:35 -0700 (PDT)
Message-ID: <53AA7BC4.5040301@gmail.com>
Date: Wed, 25 Jun 2014 09:35:32 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1403606628-30148-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20140625065615.GM15686@pengutronix.de>
In-Reply-To: <20140625065615.GM15686@pengutronix.de>
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
Subject: Re: [PATCH v2] pinctrl: mvebu: add pinctrl drivers for Dove and
 Kirkwood
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 06/25/2014 08:56 AM, Sascha Hauer wrote:
> On Tue, Jun 24, 2014 at 12:43:48PM +0200, Sebastian Hesselbarth wrote:
>> This adds pinctrl drivers for Marvell Dove and Kirkwood SoCs based
>> on a common driver stub. This design is based on the corresponding
>> Linux driver and should ease additional drivers for Marvell Armada
>> SoCs.
>>
>> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
>
> Applied with a small change:
>
>> +static int kirkwood_pinctrl_probe(struct device_d *dev)
>> +{
>> +	const struct of_device_id *match =
>> +		of_match_node(kirkwood_pinctrl_of_match, dev->device_node);
>> +	struct mvebu_pinctrl_soc_info *soc =
>> +		(struct mvebu_pinctrl_soc_info *)match->data;
>> +
>> +	mpp_base = dev_request_mem_region(dev, 0);
>
> I added a return value check here. Not checking it means that the driver
> could do NULL pointer dereferences during runtime.
>
> I should really fix the places where the check is missing in the tree.

Ok, thanks for catching it. Did you also apply the same fix
to Dove's pinctrl stub?

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

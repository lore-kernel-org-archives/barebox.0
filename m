Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22e.google.com ([2a00:1450:4008:c01::22e])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Url1t-0001cB-Hr
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 08:24:42 +0000
Received: by mail-bk0-f46.google.com with SMTP id na10so4753131bkb.19
 for <barebox@lists.infradead.org>; Wed, 26 Jun 2013 01:24:04 -0700 (PDT)
Message-ID: <51CAA51F.1040908@gmail.com>
Date: Wed, 26 Jun 2013 10:23:59 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372152047-28134-5-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130626061153.GM32299@pengutronix.de>
In-Reply-To: <20130626061153.GM32299@pengutronix.de>
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
Subject: Re: [PATCH 4/9] OF: import bus/device related functions from Linux
 OF API
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 06/26/13 08:11, Sascha Hauer wrote:
> On Tue, Jun 25, 2013 at 11:20:42AM +0200, Sebastian Hesselbarth wrote:
>> +struct device_d *of_find_device_by_node(struct device_node *np)
>> +{
>> +        struct device_d *dev;
>> +
>> +	for_each_device(dev)
>> +		if (dev->device_node == np)
>> +			return dev;
>> +        return NULL;
>> +}
>
> There's some whitespace damage in this function.

True, and again I am wondering why my pre-commit checkpatch hook didn't
catch it.

Queued for v2.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

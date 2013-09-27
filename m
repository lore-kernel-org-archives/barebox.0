Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo4.mail-out.ovh.net ([178.32.98.131]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPU24-00048j-NP
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 09:08:18 +0000
Received: from mail408.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id A7AA51064DBE
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 11:07:51 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20130927090556.GS30088@pengutronix.de>
Date: Fri, 27 Sep 2013 17:07:35 +0800
Message-Id: <662887B7-20C6-4FBF-AFB5-2F83B221F64D@jcrosoft.com>
References: <20130927071255.GB32444@ns203013.ovh.net>
 <1380266058-18501-1-git-send-email-plagnioj@jcrosoft.com>
 <1380266058-18501-3-git-send-email-plagnioj@jcrosoft.com>
 <20130927085056.GP30088@pengutronix.de>
 <20130927085847.GE32444@ns203013.ovh.net>
 <20130927090556.GS30088@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/8] console: factorise function to get the console by name
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


On Sep 27, 2013, at 5:05 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Fri, Sep 27, 2013 at 10:58:47AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
>> On 10:50 Fri 27 Sep     , Sascha Hauer wrote:
>>> On Fri, Sep 27, 2013 at 09:14:13AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
>>>> rename it to console_get_by_name
>>>> 
>>>> +struct console_device *console_get_by_name(const char *cname)
>>>> +{
>>>> +	struct console_device *cdev;
>>>> +	const char *target;
>>>> +
>>>> +	for_each_console(cdev) {
>>>> +		target = dev_id(&cdev->class_dev);
>>>> +		if (strcmp(cname, target))
>>>> +			continue;
>>>> +		if ((cdev->f_active & (CONSOLE_STDIN | CONSOLE_STDOUT))
>>>> +			return cdev;
>>>> +		return NULL;
>>>> +	}
>>>> +	return NULL;
>>>> +}
>>>> +EXPORT_SYMBOL(console_get_by_name);
>>> 
>>> I know this patch doesn't change the current behaviour, but a common
>>> function console_get_by_name() should return return the console by name
>>> regardless of whether it's active or not.
>> 
>> I change it behaviour later as now this function will check the console
>> feature
>> 
>> as the current implemetation do it too but in the wrong way
>>> 
>>> For the loadx code this would be a net win aswell. I think this code
>>> should not depend on an active console but the other way round: It
>>> should clear the CONSOLE_STDIN/CONSOLE_STDOUT during loadx operation.
>>> This way we could easily make sure there are no printf message garbling
>>> the line during transfers and still we could have console messages on
>>> other consoles.
>> 
>> patch 8 finaly clean it
> 
> ?
> 
> patch 8/8 is an atmel serial driver specific patch that changes nothing
> in this regard.
> 

it's patch 9 I forget to send this one

but put it on the git

> What I mean is that the loadx stuff should do a cdev->active = 0 so that
> during transfers printf is still possible without corrupting the
> transfers. This behaviour is not changed in this series.

yeah I agree

Best Regards,
J.


> 
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YLU3n-0007kU-UO
 for barebox@lists.infradead.org; Wed, 11 Feb 2015 09:58:20 +0000
Message-ID: <54DB279E.7070806@phytec.de>
Date: Wed, 11 Feb 2015 10:57:50 +0100
From: Wadim Egorov <w.egorov@phytec.de>
MIME-Version: 1.0
References: <1423577638-27907-1-git-send-email-w.egorov@phytec.de>
 <1423577638-27907-2-git-send-email-w.egorov@phytec.de>
 <20150211073910.GF12209@pengutronix.de>
In-Reply-To: <20150211073910.GF12209@pengutronix.de>
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
Subject: Re: [PATCH v3: For next 2/2] ARM: am33xx: Add support for reset reason
 detection
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


On 11.02.2015 08:39, Sascha Hauer wrote:
> On Tue, Feb 10, 2015 at 03:13:58PM +0100, Wadim Egorov wrote:
>> Also activate in defconfig.
>>
>> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
>> +		break;
>> +	case (1 << 1):
>> +		reset_source_set(RESET_RST);
>> +		break;
>> +	case (1 << 0):
>> +		reset_source_set(RESET_POR);
>> +		break;
>> +	default:
>> +		reset_source_set(RESET_UKWN);
>> +		break;
>> +	}
>> +
>> +	return 0;
>> +}
>> +device_initcall(am33xx_detect_reset_reason);
> No SoC specific initcall without testing if you're running on the
> correct SoC please. Better call it from am33xx_init() which is only
> executed on am33xx.
>
> Sascha
Calling it from am33xx_init() was also my idea in the first place.
AFAIK you have to call reset_source_set() after coredevice_initcall().
So it is not possible to call it from am33xx_init().

But I can do a cpu check within am33xx_detect_reset_reason() and
cancel the detection if it is not an am335.
>
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

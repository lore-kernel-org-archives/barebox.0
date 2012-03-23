Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay03.ispgateway.de ([80.67.18.15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SB40j-0006Zb-Pl
 for barebox@lists.infradead.org; Fri, 23 Mar 2012 12:54:30 +0000
Message-ID: <4F6C72B8.6050604@ronetix.at>
Date: Fri, 23 Mar 2012 14:55:20 +0200
From: RONETIX - Asen Dimov <dimov@ronetix.at>
MIME-Version: 1.0
References: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
 <1332347246-8777-1-git-send-email-dimov@ronetix.at>
 <1332347246-8777-3-git-send-email-dimov@ronetix.at>
 <20120322201758.GC3852@pengutronix.de>
In-Reply-To: <20120322201758.GC3852@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 3/4] pm9g45: enable MCI0
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

On 03/22/2012 10:17 PM, Sascha Hauer wrote:
> On Wed, Mar 21, 2012 at 06:27:25PM +0200, Asen Chavdarov Dimov wrote:
>> FIXME: part of or no data is written. File copy ends
>> with message: "atmel_mci@atmel_mci0: command/data timeout"
> Should I apply these patches? These FIXMEs seem to say that they don't
> work.
Yes, please.
At least reading ends with no errors.

> Sascha
>
Regards,
Asen
...

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

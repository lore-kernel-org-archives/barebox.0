Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx.til-technologies.net ([92.103.228.36])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UG4xY-0001ya-6D
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 10:00:32 +0000
Message-ID: <51419FFB.1070608@til-technologies.fr>
Date: Thu, 14 Mar 2013 11:01:31 +0100
From: Cerrato Renaud <r.cerrato@til-technologies.fr>
MIME-Version: 1.0
References: <514082C7.9090502@til-technologies.fr>
 <20130314073541.GC1906@pengutronix.de>
In-Reply-To: <20130314073541.GC1906@pengutronix.de>
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
Subject: Re: [PATCH 4/5] gadget: possible null pointer dereference fix
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

For some reasons relative to my company , I'm not able to send emails 
using git-send-email. I gave up.
Thanks.

On jeudi 14 mars 2013 08:35:41, Sascha Hauer wrote:
> On Wed, Mar 13, 2013 at 02:44:39PM +0100, Cerrato Renaud wrote:
>> This patch fix a possible null pointer dereference exception because of a missing null check on cdev->config
>>
>> Signed-off-by: Cerrato Renaud <r.cerrato@til-technologies.fr>
>> ---
>>  drivers/usb/gadget/composite.c |   23 +++++++++++++----------
>>  1 files changed, 13 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/usb/gadget/composite.c b/drivers/usb/gadget/composite.c
>> index 9af115e..1f6c5b2 100644
>> --- a/drivers/usb/gadget/composite.c
>> +++ b/drivers/usb/gadget/composite.c
>> @@ -777,18 +777,21 @@ unknown:
>>           * recipients (endpoint, other, WUSB, ...) to the current
>>           * configuration code.
>>           */
>> -        f = cdev->config->interface[intf];
>> -        if (f && f->setup)
>> -            value = f->setup(f, ctrl);
>> -        else
>> -            f = NULL;
>> +        if(cdev->config) {
>
> please do a:
>
> 	if (!cdev->config)
> 		goto out;
>
> instead.
>
> Your patch is whitespace damaged, I won't be able to apply it.
> As Jean-Christophe mentioned, you should use git-send-mail for sending
> your patches. It does things just right.
>
> Sascha
>




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

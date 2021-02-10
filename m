Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9lLU-0000Sl-2G
 for barebox@lists.infradead.org; Wed, 10 Feb 2021 08:59:37 +0000
References: <315301163.215482.1612946189188@office.mailbox.org>
 <463f958aef1dca20c56278a4cf81c6154127cfe2.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <bbd44e26-4d30-83b1-a103-e9e3b8ef1819@pengutronix.de>
Date: Wed, 10 Feb 2021 09:59:34 +0100
MIME-Version: 1.0
In-Reply-To: <463f958aef1dca20c56278a4cf81c6154127cfe2.camel@pengutronix.de>
Content-Language: en-US
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
Subject: Re: lock path in barebox-state
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>, barebox+mailing@cookiesoft.de, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 10.02.21 09:51, Rouven Czerwinski wrote:
> Hi Marcel
> 
> On Wed, 2021-02-10 at 09:36 +0100, barebox+mailing@cookiesoft.de wrote:
>> Hey everyone, 
>>
>> we use barebox-state in conjunction with systemd on our platform. 
>> We removed all legacy programs and paths (in systemd terms), so is `/var/lock` removed as well. 
>>
>> Lennart Poettering decribed it in a github issue why /var/lock is bad (and the reason why it's not pupolated per default): https://github.com/systemd/systemd/issues/15668#issuecomment-623069821 
>>
>> So for now our option is to create /var/lock via tmpfiles so barebox-state can use them. 
>>
>> I would like to see a upstream fix for this, where barebox uses its own directory, e.g. `/run/barebox/lock` or similar. 
>>
>> I'm not sure if this breaks anything on older systems, maybe you can think about it for a second. 
>>
>> Please let me know what you think the best approach would be. 
> 
> Since barebox-state is part of the dt-utils software suite, questions
> should be directed to oss-tools@pengutronix.de Feel free to send
> patches changing the locking directory to this address as well.

There's already a patch for that:
https://www.mail-archive.com/oss-tools@pengutronix.de/msg00063.html

> 
> Regards,
> Rouven Czerwinski
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

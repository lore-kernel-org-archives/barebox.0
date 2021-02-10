Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9lDo-0007cY-JL
 for barebox@lists.infradead.org; Wed, 10 Feb 2021 08:51:41 +0000
Message-ID: <463f958aef1dca20c56278a4cf81c6154127cfe2.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 10 Feb 2021 09:51:36 +0100
In-Reply-To: <315301163.215482.1612946189188@office.mailbox.org>
References: <315301163.215482.1612946189188@office.mailbox.org>
MIME-Version: 1.0
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
To: barebox+mailing@cookiesoft.de, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Marcel

On Wed, 2021-02-10 at 09:36 +0100, barebox+mailing@cookiesoft.de wrote:
> Hey everyone, 
> 
> we use barebox-state in conjunction with systemd on our platform. 
> We removed all legacy programs and paths (in systemd terms), so is `/var/lock` removed as well. 
> 
> Lennart Poettering decribed it in a github issue why /var/lock is bad (and the reason why it's not pupolated per default): https://github.com/systemd/systemd/issues/15668#issuecomment-623069821 
> 
> So for now our option is to create /var/lock via tmpfiles so barebox-state can use them. 
> 
> I would like to see a upstream fix for this, where barebox uses its own directory, e.g. `/run/barebox/lock` or similar. 
> 
> I'm not sure if this breaks anything on older systems, maybe you can think about it for a second. 
> 
> Please let me know what you think the best approach would be. 

Since barebox-state is part of the dt-utils software suite, questions
should be directed to oss-tools@pengutronix.de Feel free to send
patches changing the locking directory to this address as well.

Regards,
Rouven Czerwinski


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

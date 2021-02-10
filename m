Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9lFf-0007yB-Q4
 for barebox@lists.infradead.org; Wed, 10 Feb 2021 08:53:36 +0000
References: <198822053.215492.1612946220837@office.mailbox.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <4a80a490-3c75-4588-272d-45ee15f32ab0@pengutronix.de>
Date: Wed, 10 Feb 2021 09:53:34 +0100
MIME-Version: 1.0
In-Reply-To: <198822053.215492.1612946220837@office.mailbox.org>
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
Subject: Re: Using barebox-state as library
To: barebox+mailing@cookiesoft.de, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello Marcel,

On 10.02.21 09:37, barebox+mailing@cookiesoft.de wrote:
> Hey everyone, 
> 
> I would like to set and read barebox-states during runtime. Unfortunately only a binary is available to be used. 
> But because the variable names and values are from an untrusted environment, I don't like them to be passed to a shell directly. 

I can't follow here. Why can't you run barebox-state with the required arguments? That's what e.g.
RAUC is doing. It can listen on DBus for e.g. a mark-good and then calls barebox-state with the correct
arguments. You can use standard Linux access control mechanisms, so only your daemon's group may use
barebox-state.

> Therefore I would like to use a barebox-state library, which offers some functions, e.g. read_var, set_var, ...

dt-utils and barebox-sate is GPL2-licensed, so if that's acceptable for your daemon, you could
take dt-utils:src/barebox-state.c and replace the argument parsing with whatever. I am not
aware whether someone did that before though.

> An other approach would be some kind of IPC, e.g. dbus or similar, but I'm not sure if that would fit into the simplicity of the current binary. 
> 
> Do you see any other possibilities so fetch and set variables from the barebox-state? 
> Greetings, 
> Marcel

Cheers,
Ahmad

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

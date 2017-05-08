Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp117.iad3a.emailsrvr.com ([173.203.187.117])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d7jvQ-0001td-TO
 for barebox@lists.infradead.org; Mon, 08 May 2017 14:46:15 +0000
Received: from smtp31.relay.iad3a.emailsrvr.com (localhost [127.0.0.1])
 by smtp31.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id EA32B24B49
 for <barebox@lists.infradead.org>; Mon,  8 May 2017 10:45:50 -0400 (EDT)
Received: by smtp31.relay.iad3a.emailsrvr.com (Authenticated sender:
 siepeng-AT-mev.co.uk) with ESMTPSA id AC2A524B6B
 for <barebox@lists.infradead.org>; Mon,  8 May 2017 10:45:50 -0400 (EDT)
References: <91e8e828-d3c3-5c56-0a92-a52c493b8354@mev.co.uk>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <4208aa68-1cb6-0224-781a-4572a78ba6fd@mev.co.uk>
Date: Mon, 8 May 2017 15:45:49 +0100
MIME-Version: 1.0
In-Reply-To: <91e8e828-d3c3-5c56-0a92-a52c493b8354@mev.co.uk>
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
Subject: Re: Setting MAC address from nv variable broken in barebox 2017.05.0?
To: barebox@lists.infradead.org

On 08/05/17 14:39, Ian Abbott wrote:
> Hi,
>
> I'm not sure if this is a bug or whether I'm doing something wrong.  In
> barebox 2017.04.0 and earlier, I stored the Ethernet MAC address in a
> non-volatile ('nv') variable dev.eth0.macaddr=xx:xx:xx:xx:xx:xx and that
> got propagated to 'global' and the eth0 device on boot:
>
> barebox@xxxx:/ nv
>   allow_color: true
>   autoboot_timeout: 3
>   dev.eth0.ethaddr: xx:xx:xx:xx:xx:xx
>   user: none
[snip]
> However, in 2017.05.0, my 'dev.eth0.ethaddr' variable is no longer being
> propagated to global on boot, and as a consequence, is no longer
> propagated to eth0 (note that 'dev.eth0.ethaddr' is the only nv variable
> that I set manually when setting up a new board):
>
> barebox@xxxx:/ devinfo eth0
> Parameters:
>   ethaddr: 00:00:00:00:00:00
>   gateway: 0.0.0.0
>   ipaddr: 0.0.0.0
>   linux.bootargs:
>   netmask: 0.0.0.0
>   serverip: 0.0.0.0
>
[snip]
> Is this the proper behaviour or a bug?  Could it be related to commit
> 35d8e858bea17ec4796069c9c27fd0b134125eaf ("nv: Do not create globalvars
> from nvvars")?

As a related follow-up, this code in globalvar_add_simple() looks a bit 
strange:

	if (value)
		dev_set_param(&global_device, name, value);

	globalvar_nv_sync(name);

If you set a new global variable with a specified value and there is an 
existing nv variable of the same name, the global variable will be set 
to the value of the nv variable, rather than the specified value:

barebox@xxxx:/ nv -r quux
barebox@xxxx:/ global -r quux
barebox@xxxx:/ nv quux=foo
barebox@xxxx:/ global quux=bar
barebox@xxxx:/ echo ${global.quux}
foo

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

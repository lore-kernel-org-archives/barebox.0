Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp85.iad3a.emailsrvr.com ([173.203.187.85])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d7jyc-0002M1-Km
 for barebox@lists.infradead.org; Mon, 08 May 2017 14:49:32 +0000
Received: from smtp11.relay.iad3a.emailsrvr.com (localhost [127.0.0.1])
 by smtp11.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id A458755A4
 for <barebox@lists.infradead.org>; Mon,  8 May 2017 10:49:05 -0400 (EDT)
Received: by smtp11.relay.iad3a.emailsrvr.com (Authenticated sender:
 siepeng-AT-mev.co.uk) with ESMTPSA id 6A136557F
 for <barebox@lists.infradead.org>; Mon,  8 May 2017 10:49:05 -0400 (EDT)
References: <91e8e828-d3c3-5c56-0a92-a52c493b8354@mev.co.uk>
 <4208aa68-1cb6-0224-781a-4572a78ba6fd@mev.co.uk>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <7222213a-da96-3a82-c7b8-8d365f9f6f7a@mev.co.uk>
Date: Mon, 8 May 2017 15:49:04 +0100
MIME-Version: 1.0
In-Reply-To: <4208aa68-1cb6-0224-781a-4572a78ba6fd@mev.co.uk>
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

On 08/05/17 15:45, Ian Abbott wrote:
> As a related follow-up, this code in globalvar_add_simple() looks a bit
> strange:
>
>     if (value)
>         dev_set_param(&global_device, name, value);
>
>     globalvar_nv_sync(name);
>
> If you set a new global variable with a specified value and there is an
> existing nv variable of the same name, the global variable will be set
> to the value of the nv variable, rather than the specified value:
>
> barebox@xxxx:/ nv -r quux
> barebox@xxxx:/ global -r quux
> barebox@xxxx:/ nv quux=foo
> barebox@xxxx:/ global quux=bar
> barebox@xxxx:/ echo ${global.quux}
> foo

That was with 2017.05.0.  I'll check the behaviour with Sascha's patch 
shortly.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

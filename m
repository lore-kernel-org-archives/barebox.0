Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.meteocontrol.de ([62.245.201.114])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YzOa3-00012l-5T
 for barebox@lists.infradead.org; Mon, 01 Jun 2015 12:12:35 +0000
Message-ID: <556C4C10.3010400@meteocontrol.de>
Date: Mon, 1 Jun 2015 14:12:00 +0200
From: Moritz Warning <m.warning@meteocontrol.de>
MIME-Version: 1.0
References: <556C271F.6040005@meteocontrol.de>
 <20150601120652.GH6325@pengutronix.de>
In-Reply-To: <20150601120652.GH6325@pengutronix.de>
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
Subject: Re: Secure barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Thanks for the information!

On 06/01/2015 02:06 PM, Sascha Hauer wrote:
> Hi Moritz,
>
> On Mon, Jun 01, 2015 at 11:34:23AM +0200, Moritz Warning wrote:
>> Hi,
>>
>> I like to secure access to barebox using a password.
>> passwd seems to be the right command, but setting a
>> password does not seem to have any effect.
>>
>> After a reset, access to barebox is not limited as far
>> as I can tell.
>
> I've never really used password support. I just gave it a try and I can
> only say: It's not usable in its current state. The thing you were
> missing is: You must set nv.login.timeout to something nonzero:
>
> nv.login.timeout=3; saveenv
>
> Then afterwards I get asked for a password. If I enter this correctly I
> get to the prompt, if I enter the wrong password I'm asked for a
> password again. However, when I press ctrl-c or just an empty password I
> also get to the prompt.
> The password protection support is currently implemented in the
> /env/bin/init script. This makes the whole stuff very fragile. The
> barebox shell is not designed to be secure. Once the shell is started
> the system is insecure, so the password asking process should be done
> before entering the shell, not from the shell.
>
> Sascha
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

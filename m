Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x235.google.com ([2a00:1450:400c:c05::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZljGA-0007Pk-MA
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 19:59:51 +0000
Received: by wieq12 with SMTP id q12so36080023wie.1
 for <barebox@lists.infradead.org>; Mon, 12 Oct 2015 12:59:29 -0700 (PDT)
Message-ID: <561C111E.7010106@gmail.com>
Date: Mon, 12 Oct 2015 21:59:26 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <87d1wk74nt.fsf@belgarion.home> <561BFECA.1010105@gmail.com>
 <87k2qr6go0.fsf@belgarion.home>
In-Reply-To: <87k2qr6go0.fsf@belgarion.home>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 00/17] Armada 370/XP NAND driver
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

On 12.10.2015 21:16, Robert Jarzmik wrote:
> Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> writes:
>
>> I have prepared a branch for you based on above v2015.10.0 to ease
>> testing with all comments included so far:
>>
>> https://github.com/shesselba/barebox-dove.git testing/nfc-for-robert
> That's cool, really.
>
> It doesn't work yet :
> 	clk = clk_get_sys("nand", NULL);
> 	printf("%s(): clk = %p\n", __func__, clk);
> =>
>          zylonite_devices_init(): clk = fffffffe

Ok, thanks for testing.

I've fast-forward pushed the branch with one last try for today again.
Misread clk_get, clk_find and clk_register_clkdev and friends.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

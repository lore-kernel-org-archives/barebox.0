Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp77.iad3a.emailsrvr.com ([173.203.187.77])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dShaN-0002uU-Vi
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 10:31:10 +0000
References: <20170630115201.hyeqwm2xxxakwbu7@pengutronix.de>
 <20170705065013.ef8a4bdf81cd717cef33f2fb@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <ab51e86b-d22a-f29a-4b23-12f3abe26121@mev.co.uk>
Date: Wed, 5 Jul 2017 11:30:40 +0100
MIME-Version: 1.0
In-Reply-To: <20170705065013.ef8a4bdf81cd717cef33f2fb@gmail.com>
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
Subject: Re: v2017.07.0
To: Antony Pavlov <antonynpavlov@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>, Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, lst@pengutronix.de

On 05/07/17 04:50, Antony Pavlov wrote:
> On Fri, 30 Jun 2017 13:52:01 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
>> Hi All,
>>
>> I just releaed barebox-2017.07.0. The reason for this early release is
>> that I am away for the next two months. During this time Lucas will take
>> over maintainership and also make the next release.
>>
>> Most notable new feature this time I think is the support for links to
>> directories.
>
> Hi!
>
> It looks like the commit
>
>   commit a602bebcf7e42eb8933f224c12cad1c9320e28a1
>   Author: Sascha Hauer <s.hauer@pengutronix.de>
>   Date:   Tue May 9 07:38:48 2017 +0200
>
>       fs: Implement links to directories
>
> breaks tftp command: the command can't anymore download file from subdirectory,
> e.g.
>
>   barebox:/ tftp antony/zbarebox
>   could not open /.tftp_tmp_path/antony/zbarebox: Invalid argument
>
>   barebox:/ tftp zbarebox
>         [#################################################################]
>   barebox:/
>
> Reverting 944bf0e1 ('fixup! fs: Implement links to directories') and
> a602bebc ('fs: Implement links to directories') fixes the problem.
>

I just tried to reproduce it since the patch had caused me other 
problems, but I couldn't reproduce it on my custom board:

barebox@Belltech dbPod SoCFPGA Fast:/ version

barebox 2017.07.0 #2 Wed Jul 5 10:46:41 BST 2017

barebox@Belltech dbPod SoCFPGA Fast:/ tftp antony/zbarebox
	[#################################################################]
barebox@Belltech dbPod SoCFPGA Fast:/

I don't think it should matter, but for reference, I'm using atftpd as 
my TFTP server.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

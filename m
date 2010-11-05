Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PEGq4-0003YS-M2
	for barebox@lists.infradead.org; Fri, 05 Nov 2010 07:35:58 +0000
Date: Fri, 5 Nov 2010 09:35:25 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20101105073524.GF13530@tarshish>
References: <AANLkTinWD=wYCe-w44fQNrut6mYUO9WexfRn7FA4AymV@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTinWD=wYCe-w44fQNrut6mYUO9WexfRn7FA4AymV@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: fw_printenv | saveenv for barebox
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

Hi Belisko,

On Fri, Nov 05, 2010 at 07:57:20AM +0100, Belisko Marek wrote:
 
> not check how parameters are stored by barebox but could be used
> fw_printenv or fw_saveenv from
> userspace to inspect barebox env (similar for u-boot)?
> 
> If this is not possible I'm interested in writing such a tools ;)

Such a tool already exists. See scripts/bareboxenv.c.

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

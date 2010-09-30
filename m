Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P1Cnc-0003ud-4p
	for barebox@lists.infradead.org; Thu, 30 Sep 2010 06:39:25 +0000
Received: by ywi4 with SMTP id 4so707892ywi.36
	for <barebox@lists.infradead.org>; Wed, 29 Sep 2010 23:39:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <201009291123.19306.jbe@pengutronix.de>
References: <AANLkTi=k3qTJtQeuOMoBDJMrrR3DQbF7GunjT10FRDSW@mail.gmail.com>
	<AANLkTinsWzaMthMo2djN17hWUMG5+4K+Y-H-YZPs-q-H@mail.gmail.com>
	<201009291108.18378.jbe@pengutronix.de>
	<201009291123.19306.jbe@pengutronix.de>
Date: Thu, 30 Sep 2010 12:09:22 +0530
Message-ID: <AANLkTikrna=mcBoayqbAezJdvuo1oUhs3XEUrf+W3kpA@mail.gmail.com>
From: Gaurav Singh <gausinghnsit@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Failing to load Barebox Environment
To: Juergen Beisert <jbe@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha, Juergen,
I did a rather crude workaround for this. Copied the NAND partition
containing the environment from NAND on startup into a file using
run_command.
run_command("cp /dev/env0 /env_temp",0);
then
envfs_load("/env_temp", "/env")

This is working fine.
I think - overall the enfs_load logic has to be tweaked for NAND devices.

Now I wrote a new enfs_nand_load function - This basically reads a
Page of NAND (which works fine if my env file is less than 4096 :))
into the buffer and manipulates it to prepare the Environment
correctly. So basically we can read the entire environment partition
from NAND in one go and then manipulate it to prepare the env in RAM.

int envfs_nand_load(char *filename, char *dir)
{
        struct envfs_super* super;
        void *buf =3D NULL, *buf_free =3D NULL;
        int envfd;
        int fd, ret =3D 0;
        char *str, *tmp;
        int namelen_full;
        unsigned long size;

        envfd =3D open(filename, O_RDONLY);
        if (envfd < 0) {
                printf("Open %s %s\n", filename, errno_str());
                return -1;
        }
        /* Reading a Page into Buf */
        size =3D ENVFS_32(4096);
        buf =3D xzalloc(size);
        buf_free =3D buf;
        printf("1\n");
        ret =3D read(envfd, buf, size);
        if (ret < size) {
                perror("read");
                ret =3D errno;
                goto out;
        }

        super =3D (struct envfs_super *)buf;

        if ( ENVFS_32(super->magic) !=3D ENVFS_MAGIC) {
                printf("envfs: wrong magic on %s\n", filename);
                ret =3D -EIO;
                goto out;
        }

        if (crc32(0, (unsigned char *)super, sizeof(struct envfs_super) - 4)
                   !=3D ENVFS_32(super->sb_crc)) {
                printf("wrong crc on env superblock\n");
                ret =3D -EIO;
                goto out;
        }

        void *buf2;
        size =3D ENVFS_32(super->size);
        /* Rest on ENV except Superblock to be kept in buf2 */
        buf2 =3D (void *)((char *)buf + sizeof(struct envfs_super));

        if (crc32(0, (unsigned char *)buf2, size)
                     !=3D ENVFS_32(super->crc)) {
                printf("wrong crc on env\n");
                ret =3D -EIO;
                goto out;
        }

        while (size) {
                struct envfs_inode *inode;
                uint32_t inode_size, inode_namelen;

                inode =3D (struct envfs_inode *)buf2;

                if (ENVFS_32(inode->magic) !=3D ENVFS_INODE_MAGIC) {
                        printf("envfs: wrong magic on %s\n", filename);
                        ret =3D -EIO;
                        goto out;
                }
                inode_size =3D ENVFS_32(inode->size);
                inode_namelen =3D ENVFS_32(inode->namelen);

                debug("loading %s size %d namelen %d\n", inode->data,
                        inode_size, inode_namelen);

                str =3D concat_path_file(dir, inode->data);
                tmp =3D strdup(str);
                make_directory(dirname(tmp));
                free(tmp);

                fd =3D open(str, O_WRONLY | O_CREAT | O_TRUNC, 0644);
                free(str);
                if (fd < 0) {
                        printf("Open %s\n", errno_str());
                        ret =3D fd;
                        goto out;
                }

                namelen_full =3D PAD4(inode_namelen);
                ret =3D write(fd, buf2 + namelen_full + sizeof(struct
envfs_inode),
                                inode_size);
                if (ret < inode_size) {
                        perror("write");
                        ret =3D errno;
                        close(fd);
                        goto out;
                }

                close(fd);

                buf2 +=3D PAD4(inode_namelen) + PAD4(inode_size) +
                                sizeof(struct envfs_inode);
                size -=3D PAD4(inode_namelen) + PAD4(inode_size) +
                                sizeof(struct envfs_inode);
        }

        ret =3D 0;
out:
        close(envfd);
        if (buf_free)
                free(buf_free);
        return ret;
}




On Wed, Sep 29, 2010 at 2:53 PM, Juergen Beisert <jbe@pengutronix.de> wrote:
> Juergen Beisert wrote:
>> Just a note:
>>
>> You configure:
>> > >> devfs_add_partition("nand0", 0x00000, 0x200000, PARTITION_FIXED,
>> > >> "self_raw"); dev_add_bb_dev("self_raw", "self0");
>> > >> devfs_add_partition("nand0", 0x200000, 0x200000, PARTITION_FIXED,
>> > >> "env_raw"); dev_add_bb_dev("env_raw", "env0");
>>
>> And then:
>> > EVB2065> addpart /dev/nand0 4M(barebox)ro,2M(kernel)ro,-(root)
>>
>> Both must match!
>>
>> Try instead:
>>
>> EVB2065> addpart /dev/nand0 256k(barebox)ro,256k(env),2M(kernel)ro,-(roo=
t)
>>
>> jbe
>
> Ups, sorry: 0x200000 !=3D 256k (didn't count the '0' right...)
>
> EVB2065> addpart /dev/nand0 2M(barebox)ro,2M(env),2M(kernel)ro,-(root)
>
> jbe
>
> --
> Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Beisert =A0 =A0 =A0 =A0 =A0 =A0 |
> Linux Solutions for Science and Industry =A0 =A0 =A0| Phone: +49-8766-939=
 228 =A0 =A0 |
> Vertretung Sued/Muenchen, Germany =A0 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-=
5121-206917-5555 |
> Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 =A0 =A0| http://www.=
pengutronix.de/ =A0|
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
